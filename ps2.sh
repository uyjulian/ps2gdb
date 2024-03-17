target remote 192.168.1.13:12
symbol-file sample/testgdb.elf
layout src
layout asm
layout split
list main
b testgdb.c:12
c
