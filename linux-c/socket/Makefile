all: server client

server: server.c
	gcc -g  -W -Wall $(LIBS) -o $@ $<

client: client.c
	gcc -g  -W -Wall $(LIBS) -o $@ $<

dSYM: *.dSYM
	rm -rf *.dSYM

clean:
	rm server client

