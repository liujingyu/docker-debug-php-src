all: fork zombine waitpid pipe shell

#LIBS = -lpthread #-lsocket
#gcc -g -W -Wall $(LIBS) -o $@ $<

waitpid: waitpid.c
	gcc -g -W -Wall -o $@ $<

fork: fork.c
	gcc -g -W -Wall -o $@ $<

zombine: zombine.c
	gcc -g -W -Wall -o $@ $<

pipe: pipe.c
	gcc -g -W -Wall -o $@ $<

shell: shell.c
	gcc -g -W -Wall -o $@ $<

dSYM: *.dSYM
	rm -rf *.dSYM

clean: 
	rm fork zombine waitpid pipe shell
