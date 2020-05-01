CC=gcc
CFLAGS=-I.

sequential_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o sequential_min_max -std=c99 find_min_max.o -std=c99 utils.o -std=c99 sequential_min_max.c -std=c99 $(CFLAGS)

parallel_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o parallel_min_max -std=c99 utils.o -std=c99 find_min_max.o -std=c99 parallel_min_max.c -std=c99 $(CFLAGS)

utils.o : utils.h
	$(CC) -o utils.o -std=c99 -c utils.c -std=c99 $(CFLAGS)

find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -std=c99 -c find_min_max.c -std=c99 $(CFLAGS)

clean :
	rm utils.o find_min_max.o sequential_min_max parallel_min_max

all : sequential_min_max parallel_min_max

exec_min_max.o : parallel_min_max.c exec_min_max.c
	$(CC) -o exec_min_max exec_min_max.c $(CFLAGS)