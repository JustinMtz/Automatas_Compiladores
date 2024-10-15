%{
#include <stdio.h>
%}

%%
[0-9]+  { printf("Nœmero entero: %s\n", yytext); }
.|\n    { /* ignorar cualquier otro car‡cter */ }
%%

int main() {
    yylex();
    return 0;
}
