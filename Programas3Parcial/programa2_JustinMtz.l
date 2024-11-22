%{
#include <stdio.h>
extern FILE *yyin;
%}
IZQ [a-zA-Z0-9._%+-]
DER [a-zA-Z0-9.-]
ARROBA @
DOMINIO \.[a-zA-Z]{2,}
%%
{IZQ}+{ARROBA}{DER}+{DOMINIO}
    printf("Correo electrónico válido: %s\n", yytext);
.|\n    
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