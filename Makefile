export CFLAGS:= -fPIC -Wall 
.PHONY=all
all: objects libout.so mains
	
objects: 
	@echo "-===============================-"
	@echo "-=====Generating Objects========-"
	@echo "-===============================-"
	$(MAKE) -C ./source/
libout.so:
	@echo "-===============================-"
	@echo "-=====Generating LIBRARY========-"
	@echo "-===============================-"
	$(MAKE) -C ./out/libraries/

mains:
	@echo "-===============================-"
	@echo "-=====Generated OutPut File=====-"
	@echo "-===============================-"
	$(MAKE) -C ./main

clean:
	@echo "-===============================-"
	@echo "-===========CLEANING============-"
	@echo "-===============================-"
	$(MAKE) $@ -C ./source/
	$(MAKE) $@ -C ./out/libraries/
	$(MAKE) $@ -C ./main
