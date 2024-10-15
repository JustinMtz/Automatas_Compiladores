%{
#include <stdio.h>
%}

%%
[0-9]+\.[0-9]+  { printf("Número decimal: %s\n", yytext); }
.|\n            { /* ignorar cualquier otro carácter */ }
%%

int main() {
    yylex();
    return 0;
}