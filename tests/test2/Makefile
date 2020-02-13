all: test
test: hello
	./hello | diff -u - expected.stdout
hello: hello.o
clean:
	rm -f hello hello.o
