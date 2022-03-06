# Included in https://github.com/stablecc/scclib under directory import/googletest/googletest

ifndef IMPORT_GOOGLETEST
IMPORT_GOOGLETEST := 1

BLDLIBS += $(BASE)/import/googletest/googletest

CPPFLAGS += -isystem $(BASE)/import/googletest/googletest/include

ifeq ($(BLDTYPE),debug)
SLIBS := -lgtestd $(SLIBS)
else
SLIBS := -lgtest $(SLIBS)
endif

endif
