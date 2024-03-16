#
# Makefile template
#

EE_BIN = sample_gdb.elf
EE_OBJS = main.o

EE_CFLAGS +=	-g -w
EE_LIBS = -ldebug -lps2gdbStub -lps2ips
EE_LDFLAGS += -L../lib

all:
	$(MAKE) $(EE_BIN)

clean:
	rm -f $(EE_BIN) $(EE_OBJS)

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal
