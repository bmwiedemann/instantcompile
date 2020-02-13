all: test
test: hello
	./hello | diff -u - expected.stdout
clean:
	rm -f hello
