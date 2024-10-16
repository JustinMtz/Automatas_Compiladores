%{
#include <stdio.h>
%}

%%
"//".* {
    printf("Comentario: %s\n", yytext);
}

"/*"([^*]|\*+[^/])*\*+"/" {
    printf("Comentario multilinea: %s\n", yytext);
}

\"([^\\\n]|(\\.))*?\" {
    printf("Texto presentado en pantalla: %s\n", yytext);
}
. { 
    // Ignora otros caracteres
}
%%

int main() {
    yylex();
    return 0;
}
