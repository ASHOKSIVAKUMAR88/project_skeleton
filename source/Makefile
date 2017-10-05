.PHONY:all
include_path = ../include
objects = ../out/source
source = $(patsubst %.c,$(objects)/%.o,$(wildcard *.c))
includes=$(wildcard $(include_path)/*.h)
all:$(source) 

$(objects)/%.o:%.c $(includes)
	gcc -c $(CFLAGS) $< -o $@ -I $(include_path)
clean:
	-rm $(objects)/*.o
