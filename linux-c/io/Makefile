all: block nonblock nonblock_timeout fcntl fcntl_redirect mmap hello

block: block.c
	gcc -g -W -Wall $(LIBS) -o $@ $<
nonblock: nonblock.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

nonblock_timeout: nonblock_timeout.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

fcntl: fcntl.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

fcntl_redirect: fcntl_redirect.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

mmap: mmap.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

hello: hello.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

clean:
	rm block nonblock nonblock_timeout fcntl fcntl_redirect mmap hello
