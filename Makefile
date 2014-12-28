all: dice

dice: lex.yy.o parser.tab.o
	gcc -o dice lex.yy.o parser.tab.o

lex.yy.o: parser.l parser.tab.o
	flex parser.l; gcc -c lex.yy.c

parser.tab.o: parser.y
	bison parser.y; gcc -c parser.tab.c; bison -d parser.y

clean:
	rm -f *.o parser.tab.* dice lex.yy.c



