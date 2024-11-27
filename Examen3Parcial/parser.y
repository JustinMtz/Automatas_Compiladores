%{
#include <stdio.h>
#include <stdlib.h>
extern int yylex();
extern int yylval;
%}

%token NUM
%token MUL

%%

expr:
    expr MUL NUM { printf("%d\n", $1 * $3); }
    | NUM { printf("%d\n", $1); }
    ;

%%

int main(void) {
    printf("Ingrese una expresión:\n");
    yyparse();
    return 0;
}
