CFLAGS=-std=c11 -g -static

# gcc compile
9cc: 9cc.c

# make tmp.s and tmp
# exec tmp
test: 9cc
	./test.sh
clean:
	rm -f 9cc *.0 *~ tmp*

.PHONY: test clean
