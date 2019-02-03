
 #include <stdio.h>
 
 /* This macro replaces something like `SQUARE(42)` with `42 * 42` */
 #define SQUARE(x) x * x
 
 int main() {
   printf("%d\n", SQUARE(3));    /* prints `9` */
   return 0;
 }


