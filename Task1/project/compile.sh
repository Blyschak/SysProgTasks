gcc -Iinclude -Isrc/m1/include -Isrc/m2/include -g3 -ansi -S src/m1/m1.c -o output/m1.s
gcc -Iinclude -Isrc/m1/include -Isrc/m2/include -g3 -ansi -S src/m2/m2.c -o output/m2.s
gcc -c output/m1.s -o output/m1.o
gcc -c output/m2.s -o output/m2.o
gcc output/m1.o output/m2.o -o output/main