#define _GNU_SOURCE /* needed by pthread_tryjoin_np() decalration */
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <limits.h>
#undef _GNU_SOURCE

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

	/* Usage: 
	 *./thread [NUMBER_OF_THREADS] [VALUE_1] .. [VALUE_N]
	 */

	if (argc < 3)
	{
		exit(1);
	}

	int i; /* for loops counter */

	/* get number of threads */
	int n = atoi(argv[1]);

	/* get input values into an array */
	int* values = (int*)malloc(n*sizeof(int*));

	/* the minimal stack size */
	size_t thread_stack_size = PTHREAD_STACK_MIN;

	/* create an array of threads */
	pthread_t* threads = (pthread_t*)malloc(n*sizeof(pthread_t));

	/* an array of stack pointers for each thread */
	void** stack_addr_bases = (void**)malloc(n*sizeof(void*));
	for (i = 0; i < n; ++i)
	{
		values[i] = atoi(argv[i+2]);
	}

	/* thread attribute structure */
	pthread_attr_t attr;
	/* init by default */
	pthread_attr_init(&attr);

	for (i = 0; i < n; ++i)
	{
		/* allocate memory for thread custom stacks */
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

	/* counter for threads that are still running */
	int thread_counter = n;

	while (thread_counter)
	{
		for (i = 0; i < n; ++i)
		{
			void* result;

			if ( 0 == pthread_tryjoin_np(threads[i], (void**)&result) )
			{
				printf("Sum returned - %ld\n", (long int)result);
				--thread_counter;
			}

		}
	}

	/* free all allocated memory */
	for (i = 0; i < n; ++i)
	{
		/* free all custom stacks */
		free(stack_addr_bases[i]);
	}

	/* free threads, stack addreses and values arrays*/
	free(threads);
	free(stack_addr_bases);
	free(values);

	return 0;
}