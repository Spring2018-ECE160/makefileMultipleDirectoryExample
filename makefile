# Definitions for constants
CC=gcc
CFLAGS = -I. 

# This will create your final output using .o compiled files
make: main.o stack.o getStuff/getch.o getStuff/getop.o
	$(CC) $(CFLAGS) -o main main.o stack.o getStuff/getch.o getStuff/getop.o

stack.o: stack.c
	$(CC) $(CFLAGS) -c stack.c

getStuff/getch.o: getStuff/getch.c
	$(CC) $(CFLAGS) -c getStuff/getch.c -o getStuff/getch.o
	
getStuff/getop.o: getStuff/getop.c
	$(CC) $(CFLAGS) -c getStuff/getop.c -o getStuff/getop.o
	
# This will compile main.c with its dependency
main.o: main.c calc.h
	$(CC) $(CFLAGS) -c main.c

# This will clean or remove compiled files so you can start fresh
clean:
	rm -rf *.o *.exe
