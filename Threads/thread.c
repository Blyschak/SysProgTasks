#define _GNU_SOURCE /* needed by pthread_tryjoin_np() decalration */
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <limits.h>
#undef _GNU_SOURCE
#include <errno.h>
#include <string.h>

#define BYTE unsigned char

#define HANDLE_ERROR(en, msg) \
	do { errno = en; perror(msg); exit(EXIT_FAILURE); } while (0)

/* the minimal stack size */
const size_t thread_stack_size = PTHREAD_STACK_MIN;

void usage();

/* function - a thread body */
void* sum(void* max);

int main(int argc, char **argv)
{

	/* Usage: 
	 *./thread [NUMBER_OF_THREADS] [VALUE_1] .. [VALUE_N]
	 */

	if (argc < 3)
	{
		usage();
		exit(EXIT_FAILURE);
	}

	int i; /* for loops counter */
	int ret;

	/* get number of threads */
	int n = atoi(argv[1]);

	if (n+2 > argc)
	{
		fprintf(stderr, "Invalid input parametrs: need %d values\n", n);
		usage();
		exit(EXIT_FAILURE);
	}

	/* get input values into an array */
	int* values = (int*)malloc(n*sizeof(int*));

	/* initialize array of values */
	for (i = 0; i < n; ++i)
	{
		values[i] = atoi(argv[i+2]);
	}

	/* create an array of threads */
	pthread_t* threads = (pthread_t*)malloc(n*sizeof(pthread_t));
	/* an array of flags that indicate that the thread is finished */
	BYTE* finished_flags = (BYTE*)malloc(n);
	/* set all flags to zero (none of threads has been finished) */
	memset(finished_flags, 0, (size_t)n);

	/* an array of stack pointers for each thread */
	void** stack_addr_bases = (void**)malloc(n*sizeof(void*));

	/* thread attribute structure */
	pthread_attr_t attr;
	/* init by default */
	pthread_attr_init(&attr);

	for (i = 0; i < n; ++i)
	{

		/* allocate memory for thread custom stacks */
		stack_addr_bases[i] = (void*)malloc(thread_stack_size);

		/* set custom stack to attributes */
		if ( 0 != (ret = pthread_attr_setstack(&attr, stack_addr_bases[i], thread_stack_size)) )
		{
			HANDLE_ERROR(ret, "pthread_attr_setstacksize()");
		}

		/* create new thread */
		if ( 0 != (ret = pthread_create(threads+i, &attr, sum, values+i)) )
		{
			HANDLE_ERROR(ret, "pthread_create()");
		}
		
	}

	/* counter for threads that are still running */
	int thread_counter = n;

	while (thread_counter)
	{
		for (i = 0; i < n; ++i)
		{
			void* result;
			/* if thread was finished then continue */
			if (finished_flags[i])
			{
				continue;
			}

			/* try to join thread */
			if ( 0 == (ret = pthread_tryjoin_np(threads[i], (void**)&result)) )
			{
				printf("Sum returned - %ld\n", (long int)result);
				/* set thread as finished */
				finished_flags[i] = 1;
				/* decrease thread counter */
				--thread_counter;
			} else if (ret != EBUSY)
			{
				printf("%d\n",ret);
				HANDLE_ERROR(ret, "pthread_tryjoin_np()");
			}

		}
	}

	if ( 0 != (ret = pthread_attr_destroy(&attr)) )
	{
		HANDLE_ERROR(ret, "pthread_attr_destroy()");
	}

	/* free all allocated memory */
	for (i = 0; i < n; ++i)
	{
		/* free all custom stacks */
		free(stack_addr_bases[i]);
	}

	/* free threads, stack addreses and values arrays*/
	free(threads);
	free(finished_flags);
	free(stack_addr_bases);
	free(values);

	return 0;
}

void usage()
{
	puts("Usage: thread [NUMBER_OF_THREADS] [VALUE_1] .. [VALUE_N]");
}

void* sum(void* max)
{
	int max_int = *((int*)max);

	if (max_int < 0)
	{
		pthread_exit((void*)0);
	}

	long int sum = 0;
	do
	{
		sum += max_int;
	} while (max_int--);

	return (void*)sum;
}