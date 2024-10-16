%{
#include <stdio.h>
%}

%%
[A-Z] { 
    // Convierte las letras mayœsculas a minœsculas
    printf("%c", yytext[0] + 32); 
}
. { 
    // Imprime cualquier otro car‡cter tal cual
    printf("%s", yytext); 
}
%%

int main() {
    yylex();
    return 0;
}
