%{
#include <stdio.h>
%}

%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}  { printf("Email institucional: %s\n", yytext); }
.|\n                                            { /* ignorar cualquier otro car‡cter */ }
%%

int main() {
    yylex();
    return 0;
}
