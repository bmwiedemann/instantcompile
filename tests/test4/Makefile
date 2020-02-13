all: test
test: hello
	./hello | diff -u - expected.stdout
hello: hellocompound.o
	$(CC) -o $@ $^
hellocompound.o: hello.o hellofunc.o
	$(LD) -r -o $@ $^
clean:
	rm -f hello *.o
