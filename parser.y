%{
#define YYSTYPE int
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

  int evaluate_dice(int num_dice, int max) {
    int result = 0;
    int i = 0;
    srand(time(NULL));
    for(i; i < num_dice; ++i) {
      result += rand() %max +1;
    }
    return result;
  }

%}
%token NEWLINE NUMBER PLUS MINUS DICE

%%
input:		/* empty string */
		|  input line
		;

line:		NEWLINE
		|  expr NEWLINE    { printf("\t%d\n", $1); }
		;

expr:		expr PLUS term     { $$ = $1 + $3; }
		|  expr MINUS term { $$ = $1 - $3; }
		|  term
		;
term: 		NUMBER DICE NUMBER { $$ = evaluate_dice($1, $3);}
		|  NUMBER
		;
%%
#include<stdio.h>

int yyerror(char *s) {
    printf("%s\n", s);
    return(0);
}

int main() {
    yyparse();
    exit(0);
}
