%{
#include <stdio.h>
%}


%%
"//".*                  printf("COMMENT\n");
"p"                     printf("print ");
"f"                     printf("floatdlc ");
"i"                     printf("intdcl ");
"="                     printf("assign ");
"+"                     printf("plus ");
[0-9]+\.[0-9]+          printf("fnum ");
[0-9]+                  printf("inum ");
[a-zA-Z][a-zA-Z0-9]*    printf("id ");
[ \t]+                  /* ignore whitespace */;
\n                      printf("\n");
%%

int main(int argc, char **argv){
  yylex();
  return 0;
}

int yywrap(){
  return 1;
}
