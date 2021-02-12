BIN = ircc

CFLAGS = -std=c99 -Os -D_POSIX_C_SOURCE=201112 -D_GNU_SOURCE -D_XOPEN_CURSES -D_XOPEN_SOURCE_EXTENDED=1 -D_DEFAULT_SOURCE -D_BSD_SOURCE
LDFLAGS = -lncursesw -lssl -lcrypto

CFLAGS = -std=c99 -Os -D_POSIX_C_SOURCE=201112 -D_GNU_SOURCE -D_XOPEN_CURSES -D_XOPEN_SOURCE_EXTENDED=1 -D_DEFAULT_SOURCE -D_BSD_SOURCE
LDFLAGS = -lncursesw -lssl -lcrypto

all: ${BIN}

clean:
	rm -f ${BIN} *.o
	rm -f /bin/ircc
	rm -f /usr/local/man1/ircc.1
.PHONY: all clean

install: all
	cp -f ircc /bin/ircc
	chmod 755 /bin/ircc
	cp -f ircc.1 /usr/local/man/man1/ircc.1
	chmod 644 /usr/local/man/man1/ircc.1
.PHONY: added /bin/ircc
.PHONY: added /usr/local/man1/ircc.1

uninstall:
	rm -f ${BIN} *.o
	rm -f /bin/ircc
	rm -f /usr/local/man1/ircc.1
