thread-single.c - програма приймає число, запускається потік з власним стеком в якому рахується сума арифметичної прогресії 1..N

thread.c - теж тільки приймає кількість чисел, для яких потрібно обрахувати суму. Все обчислюється паралельно. Результат виводиться у відповідності до того який потік швидше закінчиться

condvar.c - розібрався з conditional variable. Потік спершу заблокований. Через 5 секунд встановлюєтья флаг - потік запускається. Після нажаття Enter флаг скидається - потік блокується і в кінці cancle-литьс

spin_condvar.c - те саме. Але є різниця. Якщо нажати Enter до того як таймер на 5 секунд закінчиться, потік всетаки 1 раз виконає do_work(), оскільки потік не блокується коли очікує зміну від умовної змінної. Відповідно, після того як потік записав її в свою локальну змінну, умовна змінна встигає поміняти своє значення. Проте потік про це вже не знає.

thread-pid.c - скомпілював, запустив
