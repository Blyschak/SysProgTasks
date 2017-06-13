#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <limits.h>

/* function - a thread body */
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

int main(int argc, char **argv)
{

	if (argc < 2)
	{
		exit(1);
	}

	long int max = atoi(argv[1]);
	
	pthread_attr_t attr;
	pthread_t thread;

	/* for return value of a thread */
	int *p_ret = 0;

	/* init by default */
	pthread_attr_init(&attr);

	/* allocate my own stack using
	 * defined minimum stack size */
	size_t thread_stack_size = PTHREAD_STACK_MIN;
	void* stack_addr_base = (void*)malloc(thread_stack_size);

	/* set custom stack to attributes */
	if ( 0 != pthread_attr_setstack(&attr, stack_addr_base, thread_stack_size) )
	{
		perror("pthread_attr_setstacksize()");
		exit(1);
	}

	/* create new thread */
	pthread_create(&thread, &attr, sum, &max);

	/* wait thread to finish */
	//pthread_join(thread, (void**)&p_ret);


	while ( 0 != pthread_tryjoin_np(thread, (void**)&p_ret)) ;

	/* free this stack */
	free(stack_addr_base);

	printf("Sum returned - %ld\n", (long int)p_ret);

	return 0;
}