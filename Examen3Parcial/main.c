#include <stdio.h>
#include "y.tab.h"

extern int yyparse(void);

int main(void) {
    printf("Ingrese una expresión (por ejemplo, 3*5):\n");
    yyparse();
    return 0;
}