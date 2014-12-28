%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "parser.tab.h"
extern YYSTYPE yylval;
%}


%option noyywrap


delim			[ \t]
whitesp			{delim}+
number			[1-9][0-9]*
dice			d
%%
{number} { sscanf(yytext, "%d", &yylval); return NUMBER; }
{dice} {return DICE;}
"+"   { return PLUS; }
"-"   { return MINUS; }
"\n"   {return NEWLINE; }
{whitesp} {/* do nothing */}
