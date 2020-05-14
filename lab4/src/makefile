CC=gcc
CFLAGS=-I.

parallel_min_max : utils.o find_min_max.o utils.h find_min_max.h parallel_min_max.c
	$(CC) -o parallel_min_max utils.o -std=c99 find_min_max.o -std=c99 parallel_min_max.c -std=c99 $(CFLAGS)

parallel_min_max.o : utils.o find_min_max.o utils.h find_min_max.h parallel_min_max.c
	$(CC) -o parallel_min_max.o -c parallel_min_max.c -std=c99 $(CFLAGS)

utils.o : utils.h utils.c
	$(CC) -o utils.o -std=c99 -c utils.c $(CFLAGS)

find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -c find_min_max.c -std=c99 $(CFLAGS)

clean :
	rm utils.o find_min_max.o parallel_min_max psum zombie proc_mem

all : parallel_min_max psum zombie_creater proc_mem
    
reset : clean all
    
zombie : zombie.c
	$(CC) -o zombie zombie.c -std=c99 $(CFLAGS)

zombie.o : zombie.c
	$(CC) -o zombie.o zombie.c -std=c99 $(CFLAGS)

process_memory : process_memory.c
	$(CC) -o process_memory process_memory.c -std=c99 $(CFLAGS)

process_memory.o : process_memory.c
	$(CC) -o process_memory.o process_memory.c -std=c99 $(CFLAGS)
psum : parallel_sum.c utils.o
	$(CC) -o psum utils.o parallel_sum.c -g -lpthread $(CFLAGS)