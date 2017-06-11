bin_PROGRAMS = mainapp

INCLUDES = -I@top_srcdir@/include -I@top_srcdir@/src/m1/include -I@top_srcdir@/src/m2/include

INTI_CFLAGS = -g3 -ansi -pedantic -Wall -Werror

AM_CFLAGS = $(INTI_CFLAGS) #-Isrc/m1/include -Isrc/m2/include -Iinclude

mainappdir = .

mainapp_SOURCES = src/m1/m1.c src/m2/m2.c \
					src/m1/include/m1.h src/m2/include/m2.h \
					include/m.h