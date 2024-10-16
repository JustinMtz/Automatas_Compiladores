%{
#include <stdio.h>
%}

%%
/\bborrar\b|\bcalcular\b|\bclasificar\b|\bconstruir\b|\bdemostrar\b|\bemplear\b|\bidentificar\b|\bilustrar\b|\boperar\b|\bpracticar\b|\bpredecir\b|\bsolucionar\b|\busar\b {
    printf("Verbo de aplicaci—n: %s\n", yytext);
}
. { 
    // Ignora otros caracteres
}
%%

int main() {
    yylex();
    return 0;
}
