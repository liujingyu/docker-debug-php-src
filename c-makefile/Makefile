.PHONY: clean

clean:
	rm a.txt
	clear
a.txt: b.txt c.txt
	cat b.txt c.txt > a.txt

result.txt: source.txt
	cp source.txt result.txt

source.txt:
	echo "this is the source" > source.txt

txt = Hello World
test:
	@echo $(txt)
	@echo $$HOME

