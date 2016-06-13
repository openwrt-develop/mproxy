CC = gcc
#CC = ~/workspace/repo/git/priv/rt-n56u/toolchain-mipsel/toolchain-3.4.x/bin/mipsel-linux-uclibc-gcc
CFLAGS = -g -Wall -Werror

all: mproxy

mproxy: mproxy.o
	$(CC) $(CFLAGS) mproxy.o -o mproxy

mproxy.o: mproxy.c
	$(CC) $(CFLAGS) -c mproxy.c

clean:
	rm -rf *.o
	rm -rf mproxy
