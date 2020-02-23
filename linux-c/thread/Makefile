all: thread thread_cancel counter mutex_counter producer-consumer-condition producer-consumer-semaphore

LIBS = -lpthread #-lsocket

thread: thread.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

thread_cancel: thread_cancel.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

counter: counter.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

mutex_counter: mutex_counter.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

producer-consumer-condition: producer-consumer-condition.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

producer-consumer-semaphore: producer-consumer-semaphore.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

dSYM: *.dSYM
	rm -rf *.dSYM

clean:
	rm thread thread_cancel counter mutex_counter producer-consumer-condition producer-consumer-semaphore

