all: test
test: hello
	./hello | diff -u - expected.stdout
hello: hello.o hellofunc.o
clean:
	rm -f hello *.o
