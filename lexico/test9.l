%{
#include <stdio.h>
%}

%%
/\bcomparar\b|\bcontrastar\b|\bexperimentar\b|\binvestigar\b|\borganizar\b|\bseparar\b|\bexaminar\b/ {
    printf("Verbo de analizar: %s\n", yytext);
}

/\bbueno\b|\bexcelente\b|\bmagnífico\b|\bperfecto\b|\bmaravilloso\b|\bhermoso\b/ {
    printf("Adjetivo calificativo positivo: %s\n", yytext);
}

/\by\b|\bo\b|\bpero\b|\bporque\b|\bni\b|\bsino\b/ {
    printf("Conjunción: %s\n", yytext);
}

/\ba\b|\bante\b|\bbajo\b|\bcon\b|\bcontra\b|\ben\b|\bpara\b|\bpor\b|\bsobre\b/ {
    printf("Preposición: %s\n", yytext);
}

/\byo\b|\btú\b|\bél\b|\bella\b|\bnosotros\b|\bustedes\b|\bellos\b/ {
    printf("Pronombre: %s\n", yytext);
}
. { 
    // Ignora otros caracteres
}
%%

int main() {
    yylex();
    return 0;
}
