#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <limits.h>
#include <errno.h>

/* defined minimum stack size */
const size_t thread_stack_size = PTHREAD_STACK_MIN;

/* macros to set errno and write error message
 * and exit with EXIT_FAILURE code */
#define HANDLE_ERROR(en, msg) \
	do { errno = en; perror(msg); exit(EXIT_FAILURE); } while (0)

/* function - a thread body */
void* sum(void* max);
void usage();

int main(int argc, char **argv)
{

	if (argc < 2)
	{
		usage();
		exit(EXIT_FAILURE);
	}

	int max = atoi(argv[1]);
	
	pthread_attr_t attr;
	pthread_t thread;
	/* for return value of a thread */
	void *sum_returned;
	/* for pthread functions to save their return values */
	int ret;

	/* init by default */
	pthread_attr_init(&attr);
	/* allocate my own stack using */
	void* stack_addr_base = (void*)malloc(thread_stack_size);

	/* set custom stack to attributes */
	if ( 0 != (ret = pthread_attr_setstack(&attr, stack_addr_base, thread_stack_size)) )
	{
		HANDLE_ERROR(ret, "pthread_attr_setstack()");
	}

	/* create new thread */
	if ( 0 != (ret = pthread_create(&thread, &attr, sum, &max)) )
	{
		HANDLE_ERROR(ret, "pthread_create()");
	}

	/* wait thread to finish */
	if ( 0 != (ret = pthread_join(thread, (void**)&sum_returned)) )
	{
		HANDLE_ERROR(ret, "pthread_join()");
	}

	/* destroy attributes structure */
	if ( 0 != (ret = pthread_attr_destroy(&attr)) )
	{
		HANDLE_ERROR(ret, "pthread_attr_destroy()");
	}

	/* free this stack */
	free(stack_addr_base);

	printf("Sum returned - %ld\n", (long int)sum_returned);

	return EXIT_SUCCESS;
}

void* sum(void* max)
{
	int max_int = *((int*)max);

	if (max_int < 0)
	{
		pthread_exit(0);
	}

	long int sum = 0;
	do
	{
		sum += max_int;
	} while (max_int--);

	return (void*)sum;
}

void usage()
{
	puts("Usage:\nthread-single [VALUE]");
}