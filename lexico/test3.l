%{
#include <stdio.h>
%}

%%
[a-zA-Z][a-zA-Z0-9_]*  { printf("Identificador: %s\n", yytext); }
.|\n                   { /* ignorar cualquier otro car‡cter */ }
%%

int main() {
    yylex();
    return 0;
}