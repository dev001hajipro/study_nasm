#!/bin/bash
nasm -f elf64 $1.asm -l $1.lst && ld -s -o $1 $1.o
