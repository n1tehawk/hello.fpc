FPCDIR ?= ~/Develop/Lazarus/fpc/3.0.0/bin/i386-win32
FPC ?= $(FPCDIR)/fpc

ifeq (Windows_NT,$(OS))
SUFFIX := .exe
endif


TARGETS = hello

BIN = $(addsuffix $(SUFFIX),$(TARGETS))
$(BIN): %$(SUFFIX): %.pas
	$(FPC) $<

clean:
	echo $(SUFFIX)
	rm -f $(BIN) *.o link.res ppas.bat
