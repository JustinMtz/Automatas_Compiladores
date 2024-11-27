%{
#include <stdio.h>
#include "y.tab.h"
%}

%%

[0-9]+      { yylval = atoi(yytext); return NUM; }
"*"         { return MUL; }

%%

int yywrap(void) {
    return 1;
}