CC := gcc
CFLAGS := -Wall -Werror -pedantic -std=c99 -m32
OBJS := return.o nested.o plain.o
FUNCS := return_nores.asm return_res_leak.asm return_res_noleak.asm \
         nested_nores.asm nested_res.asm plain_nores.asm plain_res.asm

.DEFAULT_GOAL := disasm

ifeq ($(mode), optimize)
	CFLAGS += -O3
endif

main.exe: $(OBJS) main.o
	$(CC) $(CFLAGS) $^ -o $@

disasm: $(FUNCS)

%.o: %.c *.h
	$(CC) $(CFLAGS) -c $<

%.asm: main.exe
	objdump -M intel -d --no-show-raw-insn main.exe | sed '/<$(shell echo "$@" | cut -d '.' -f 1)>:/,/^$$/!d' > ./disasm/$@

clean:
	rm -f *.exe *.gcda *.gcno *.o *.so
