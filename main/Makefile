.PHONY=all
CURR_DIR=$(shell pwd)
include_path=../include
lib_path = ../out/libraries
all: main.out

%.out:%.c
	gcc -I $(include_path) -L $(lib_path) -Wl,-rpath=$(CURR_DIR)/$(lib_path)/ -o $@ $< -lout
clean:
	-rm *.out
