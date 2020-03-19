CC=gcc
CFLAGS=-Wno-constant-conversion

honeybee_test: honeybee_test.o honeybee.o
	$(CC) $(CFLAGS) -o honeybee_test honeybee_test.o honeybee.o


honeybee_test.o: honeybee_test.c honeybee.h
	$(CC) $(CFLAGS) -c honeybee_test.c

honeybee.o: honeybee.c honeybee.h
	$(CC) $(CFLAGS) -c honeybee.c

clean:
	rm honeybee_test *.o