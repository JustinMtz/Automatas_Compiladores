%{
#include <stdio.h>
%}

%%
/\bbreak\b|\bcase\b|\bchar\b|\bcontinue\b|\bdo\b|\belse\b|\benum\b|\bfloat\b|\bfor\b|\bgoto\b|\bif\b|\bint\b|\blong\b|\breturn\b|\bshort\b|\bsigned\b|\bswitch\b|\bunsigned\b|\bvoid\b|\bwhile\b/ {
    printf("Palabra reservada de C: %s\n", yytext);
}

[a-zA-Z_][a-zA-Z0-9_]* {
    printf("Variable o identificador: %s\n", yytext);
}

"int"|"float"|"double"|"char" {
    printf("Tipo de dato: %s\n", yytext);
}
. { 
    // Ignora otros caracteres
}
%%

int main() {
    yylex();
    return 0;
}
