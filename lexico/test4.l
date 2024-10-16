%{
#include <stdio.h>
%}

%%
[A-Z]{4}[0-9]{6}[A-Z0-9]{3}  { printf("RFC válido: %s\n", yytext); }
.|\n                         { /* ignorar cualquier otro carácter */ }
%%

int main() {
    yylex();
    return 0;
}