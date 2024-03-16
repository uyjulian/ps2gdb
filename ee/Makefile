#
# Makefile template
#

EE_LIB_DIR = ../lib/
EE_LIB  = $(EE_LIB_DIR)libps2gdbStub.a
EE_OBJS = ps2gdbStub.o gdb-low.o

EE_CFLAGS +=	-g -w
# -DDEBUG
EE_LDFLAGS +=	-Wl,-Map,ps2gdbStub.map -L. -L../lib -L$(PS2SDK)/ee/lib

all: $(EE_LIB)
	@mkdir -p $(EE_LIB_DIR)
	$(EE_AR) rcs $(EE_LIB) $(EE_OBJS)

clean:
	rm -rf $(EE_OBJS) $(EE_LIB) $(EE_LIB_DIR)

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal
