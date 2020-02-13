all: test
test: hello
	./hello | diff -u - expected.stdout
	! echo $$PATH | grep -q instantcompile || grep -q 'hello.c"' hello
hello: hello.o
clean:
	rm -f hello hello.o
