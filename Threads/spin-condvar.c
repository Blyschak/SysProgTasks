#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define BOOL unsigned char
#define TRUE 1
#define FALSE 0
#define SECOND 1000000

int thread_flag;
pthread_cond_t thread_flag_cv;
pthread_mutex_t thread_flag_mutex;

void wait_n_secs(int seconds, BOOL show_output)
{
  int i;
  for (i = 1; i <= seconds; ++i)
  {
    usleep(SECOND);
    if (show_output)
      printf("Second %d\n", i);
  }
}

void do_work()
{
  static int counter = 0;
  printf("do_work() counting %d\n", counter);
  ++counter;
  usleep(SECOND/3);
}

void initialize_flag() {
 pthread_mutex_init(&thread_flag_mutex, NULL);
 thread_flag = 0;
}

/* Если флаг установлен, многократно вызывается функция do_work().
   В противном случае цикл работает вхолостую. */
void* thread_function(void* thread_arg) {
 while (1) {
  int flag_is_set;
  /* Защищаем флаг с помощью исключающего семафора. */
  pthread_mutex_lock(&thread_flag_mutex);
  flag_is_set = thread_flag;
  pthread_mutex_unlock(&thread_flag_mutex);
  /* !!!
   * when we are here the flag can change in another thread
   */
  if (flag_is_set)
   do_work();
  /* Если флаг не установлен, ничего не делаем. Просто переходим
     на следующую итерацию цикла. */
 }
 return NULL;
}

/* Задаем значение флага равным FLAG_VALUE. */
void set_thread_flag(int flag_value) {
 /* Защищаем флаг с помощью исключающего семафора. */
 pthread_mutex_lock(&thread_flag_mutex);
 thread_flag = flag_value;
 pthread_mutex_unlock(&thread_flag_mutex);
}

int main(int argc, char** argv)
{
  pthread_t thread1, thread2;

  initialize_flag();

  printf("Creating new thread\n");
  pthread_create(&thread1, NULL, thread_function, NULL);
  printf("New thread created\n");

  printf("Wait 5 seconds\n");
  wait_n_secs(5, TRUE);
  printf("Now a new thread will run with output\n"
    "Press Enter to block the thread\n");
  set_thread_flag(1);

  getchar();
  set_thread_flag(0);

  printf("Thread is blocked, so now we will "
    "cancel it to exit the program\n");

  pthread_cancel(thread1);

  return EXIT_SUCCESS;

}