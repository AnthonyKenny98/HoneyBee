CC=gcc

honeybee_test: honeybee_test.o honeybee.o
	$(CC) -o honeybee_test honeybee_test.o honeybee.o -lm


honeybee_test.o: honeybee_test.c honeybee.h
	$(CC) -c honeybee_test.c -lm

honeybee.o: honeybee.c honeybee.h
	$(CC) -c honeybee.c -lm

clean:
	rm honeybee_test *.o