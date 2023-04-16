CC=gcc
CFLAGS=-Iinclude
DEPS = HTTP_Server.h
exec = cervur
sources = $(wildcard src/*.c)
objects = $(sources:.c=.o)
flags = -g -Wall -lm -ldl -fPIC -rdynamic -I./include
# flags = -I./include

$(exec): $(objects)
	gcc $(objects) $(flags) -o $(exec)

%.o: %.c %.h
	$(CC) -c $(flags) $< -o $@


clean:
	-rm src/*.o
