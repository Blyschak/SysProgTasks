#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>

#define BOOL unsigned char
#define TRUE 1
#define FALSE 0

int thread_flag;
pthread_cond_t thread_flag_cv;
pthread_mutex_t thread_flag_mutex;

void wait_n_secs(int seconds, BOOL show_output)
{
  for (int i = 1; i <= seconds; ++i)
  {
    usleep(1000000);
    if (show_output)
      printf("Second %d\n", i);
  }
}

void do_work()
{
  static int counter = 0;
  printf("do_work() counting %d\n", counter);
  ++counter;
  usleep(1000000);
}

void initialize_flag() {
  /* Инициализация исключающего семафора и сигнальной
    переменной. */
  pthread_mutex_init(&thread_flag_mutex, NULL);
  pthread_cond_init(&thread_flag_cv, NULL);
  /* Инициализация флага. */
  thread_flag = 0;
}

/* Если флаг установлен, многократно вызывается функция
  do_work(). В противном случае поток блокируется. */
void* thread_function(void* thread_arg) {
  /* Бесконечный цикл. */
  while (1) {
    /* Захватываем исключающий семафор, прежде чем обращаться
      к флагу. */
    pthread_mutex_lock(&thread_flag_mutex);
    while (!thread_flag)
      /* Флаг сброшен. Ожидаем сигнала об изменении условной
        переменной, указывающего на то, что флаг установлен.
        При поступлении сигнала поток разблокируется и снова
        проверяет флаг. */
      pthread_cond_wait(&thread_flag_cv, &thread_flag_mutex);
    /* При выходе из цикла освобождаем исключающий семафор. */
    pthread_mutex_unlock(&thread_flag_mutex);
    /* Выполняем требуемые действия. */
    do_work();
  }
  return NULL;
}

/* Задаем значение флага равным FLAG_VALUE. */
void set_thread_flag(int flag_value) {
  /* Захватываем исключающий семафор, прежде чем изменять
    значение флага. */
  pthread_mutex_lock(&thread_flag_mutex);
  /* Устанавливаем флаг и посылаем сигнал функции
    thread_function(), заблокированной в ожидании флага.
    Правда, функция не сможет проверить флаг, пока
    исключающий семафор не будет освобожден. */
  thread_flag = flag_value;
  pthread_cond_signal(&thread_flag_cv);
  /* освобождаем исключающий семафор. */
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
    "And after 10 seconds will be blocked\n");
  set_thread_flag(1);

  wait_n_secs(10, FALSE);
  set_thread_flag(0);

  printf("Thread is blocked, so now we will "
    "cancel it to exit the program\n");

  pthread_cancel(thread1);

  return EXIT_SUCCESS;

}