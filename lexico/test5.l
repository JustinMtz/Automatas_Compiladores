%{
#include <stdio.h>
%}

%%
[A-Z]{4}[0-9]{6}[H|M][A-Z]{5}[0-9]{2}  { printf("CURP v‡lido: %s\n", yytext); }
.|\n                                   { /* ignorar cualquier otro car‡cter */ }
%%

int main() {
    yylex();
    return 0;
}
