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

	if (argc < 3)
	{
		exit(1);
	}

	int n = atoi(argv[1]);
	pthread_t* threads = (pthread_t*)malloc(n*sizeof(pthread_t));
	void** stack_addr_bases = (void**)malloc(n*sizeof(void*));

	int* values = (int*)malloc(n*sizeof(int*));


	for (int i = 0; i < n; ++i)
	{
		values[i] = atoi(argv[i+2]);
	}



	size_t thread_stack_size = PTHREAD_STACK_MIN;

	

	for (int i = 0; i < n; ++i)
	{

		pthread_attr_t attr;
		/* init by default */
		pthread_attr_init(&attr);

		//int max = atoi(argv[i+2]);

		//printf("%s\n",argv[i+2]);

		stack_addr_bases[i] = (void*)malloc(thread_stack_size);

		/* set custom stack to attributes */
		if ( 0 != pthread_attr_setstack(&attr, stack_addr_bases[i], thread_stack_size) )
		{
			perror("pthread_attr_setstacksize()");
			exit(1);
		}

		/* create new thread */
		pthread_create(threads+i, &attr, sum, values+i);
		
	}

	int thread_counter = n;

	while (thread_counter)
	{
		for (int i = 0; i < n; ++i)
		{
			void* p_ret;

			

			if ( 0 == pthread_tryjoin_np(threads[i], (void**)&p_ret) )
			{
				printf("Sum returned - %ld\n", (long int)p_ret);
				--thread_counter;
			}

		}
	}

	for (int i = 0; i < n; ++i)
	{
		free(stack_addr_bases[i]);
	}

	free(threads);
	free(stack_addr_bases);
	free(values);


	// long int max = atoi(argv[1]);
	
	// pthread_attr_t attr;
	// pthread_t thread;

	// /* for return value of a thread */
	// void *p_ret = 0;

	// /* init by default */
	// pthread_attr_init(&attr);

	// /* allocate my own stack using
	//  * defined minimum stack size */
	// size_t thread_stack_size = PTHREAD_STACK_MIN;
	// void* stack_addr_base = (void*)malloc(thread_stack_size);

	// /* set custom stack to attributes */
	// if ( 0 != pthread_attr_setstack(&attr, stack_addr_base, thread_stack_size) )
	// {
	// 	perror("pthread_attr_setstacksize()");
	// 	exit(1);
	// }

	// /* create new thread */
	// pthread_create(&thread, &attr, sum, &max);

	// /* wait thread to finish */
	// //pthread_join(thread, (void**)&p_ret);


	// while ( 0 != pthread_tryjoin_np(thread, (void**)&p_ret)) ;

	// /* free this stack */
	// free(stack_addr_base);

	// printf("Sum returned - %ld\n", (long int)p_ret);

	return 0;
}