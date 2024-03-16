#
# Makefile template
#
DEBUG ?= 0

EE_LIB_DIR = ../lib/
EE_LIB  = $(EE_LIB_DIR)libps2gdbStub.a
EE_OBJS = ps2gdbStub.o gdb-low.o

EE_CFLAGS += -g -w
# -DDEBUG
EE_LDFLAGS += -Wl,-Map,ps2gdbStub.map -L. -L../lib -L$(PS2SDK)/ee/lib

ifeq ($(DEBUG),1)
	EE_CFLAGS += -DDEBUG
endif

all: $(EE_LIB)
	@mkdir -p $(EE_LIB_DIR)
	$(EE_AR) rcs $(EE_LIB) $(EE_OBJS)

debug:
	$(MAKE) DEBUG=1 all

install: all
	cp -f $(EE_LIB) $(PS2SDK)/ports/lib

clean:
	rm -rf $(EE_OBJS) $(EE_LIB) $(EE_LIB_DIR)

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal
