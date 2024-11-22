%{
#include <stdio.h>
extern archivo *yyin;
%}
DIGIT [0-9]
OPERATOR [+*/-]
%%
{DIGIT}+    printf("Número: %s\n", yytext);
{OPERATOR}  printf("Operador: %s\n", yytext);
.           
%%
int main(int argc, char **argv) {
    if (argc > 1) {
        yyin = fopen(argv[1], "r");
        if (!yyin) {
            perror("No se pudo abrir el archivo");
            return 1;
        }
    }
    yylex();
    if (yyin) fclose(yyin);
    return 0;
}
