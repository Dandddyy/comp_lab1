%{
#include <stdio.h>
%}

%%
"if"            { printf("KEYWORD: if\n");}
"else"          { printf("KEYWORD: else\n"); }
"while"         { printf("KEYWORD: while\n");}
"let"           { printf("KEYWORD: let\n");}
"in"            { printf("KEYWORD: in\n");}
"end"           { printf("KEYWORD: end\n");}

[0-9]+          { int int_val = atoi(yytext); printf("INTEGER: %d\n", int_val);}

[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER: %s\n", yytext);}

"+"             { printf("SYMBOL: +\n");}
"-"             { printf("SYMBOL: -\n");}
"*"             { printf("SYMBOL: *\n");}
"/"             { printf("SYMBOL: /\n");}
":="            { printf("SYMBOL: :=\n");}

[ \t\n]+        { }
"//".*          { }

.               { printf("Unknown token: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}
