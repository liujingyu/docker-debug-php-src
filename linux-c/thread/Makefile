all: thread thread_cancel

LIBS = -lpthread #-lsocket

thread: thread.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

thread_cancel: thread_cancel.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

dSYM: *.dSYM
	rm -rf *.dSYM

clean:
	rm thread thread_cancel

