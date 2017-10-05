SOURCE=$(wildcard ../source/*.o)
.PHONY=all
all:libout.so libout.a
libout.so: $(SOURCE)
	gcc -shared -fPIC -Wall -o $@ $^
libout.a: $(SOURCE)
	ar -rvf -o $@ $?
clean:
	-rm *.so
	-rm *.a
	
