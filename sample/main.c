#include <stdio.h>
#include <debug.h>

int gdb_stub_main( int argc, char *argv[] );

int main( int argc, char *argv[] )
{
  volatile int i = 0;

  init_scr();
  gdb_stub_main(0, NULL);
  scr_printf("i = %d\n", i += 2);
  scr_printf("i = %d\n", i += 10);

  asm("l: b l;");

  return 0;
}
