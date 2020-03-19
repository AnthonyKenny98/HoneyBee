CC=gcc

honeybee_test: honeybee_test.o honeybee.o
	$(CC) -o honeybee_test honeybee_test.o honeybee.o


honeybee_test.o: honeybee_test.c honeybee.h
	$(CC) -c honeybee_test.c

honeybee.o: honeybee.c honeybee.h
	$(CC) -c honeybee.c

clean:
	rm honeybee_test *.o