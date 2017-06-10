# standart GNU C Compiler
CC=gcc
# find all include directories in project and add -I prefix
INCLUDE=$(addprefix -I,$(wildcard include src/*/include))
OUTPUT=output/
# find all source directories
SRC=$(wildcard src src/*)
# find all source file names
SOURCES=$(notdir $(shell find src -name *.c))
# generate form source file names obj and asm names
OBJS=$(SOURCES:.c=.o)
ASM=$(SOURCES:c.=.s)

# compiler flags
CFLAGS= -g3 -ansi -pedantic -Wall -Werror
LIBFLAGS=
APP=main
INSTALLDIR=/usr/local/bin/
STRIP_PROGRAM=

$(APP): $(OBJS)
	$(CC) $(addprefix $(OUTPUT),$(OBJS)) $(LIBFLAGS) -o $(OUTPUT)$(APP)

%.o: %.s
	$(CC) $(CFLAGS) -c $(OUTPUT)$< -o $(OUTPUT)$@

# macro to compile each module (directory) in src
# A better way can be to write Makefiles for
# each of the module but for this project i will use
# this macro and compile each module in a loop
define compile-module
%.s: $1/%.c
	$(CC) $(CFLAGS) -S $(INCLUDE) $$< -o $(OUTPUT)$$@
endef

# for each module in src/ compiles .c files and outputs .s to output/
$(foreach moduleSRC,$(SRC),$(eval $(call compile-module,$(moduleSRC))))

all: $(APP)

install: $(APP)
	install $(OUTPUT)$^ $(INSTALLDIR)

install-strip: $(APP)
	install -s --strip-program=$(STRIP_PROGRAM) $(OUTPUT)$^ $(INSTALLDIR)

uninstall:
	rm -rf $(INSTALLDIR)$(APP)

clean:
	rm -rf $(OUTPUT)*

.PHONY: clean
