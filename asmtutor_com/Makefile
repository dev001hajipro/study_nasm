AS=nasm
#ASFLAGS=-f elf64 -g
ASFLAGS=-f elf -g
#LDFLAGS=
LDFLAGS=-m elf_i386
LD=ld
SOURCES=$(wildcard *.asm)
OBJECTS=$(SOURCES:.asm=.o)
TARGETS=$(SOURCES:.asm=)

all : $(TARGETS)

$(TARGETS):

#暗黙ルールの上書き
% : %.o
	$(LD) $(LDFLAGS) -o $@ $<

#暗黙ルールの上書き
%.o : %.asm
	$(AS) $(ASFLAGS) $<

clean:
	rm -rf *.o *.lst $(TARGETS)

debug:
	echo $(SOURCES)
	echo $(OBJECTS)
	echo $(TARGETS)
