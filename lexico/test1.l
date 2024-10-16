%{
#include <stdio.h>
%}

%%
[0-9]+  { printf("N�mero entero: %s\n", yytext); }
.|\n    { /* ignorar cualquier otro car�cter */ }
%%

int main() {
    yylex();
    return 0;
}