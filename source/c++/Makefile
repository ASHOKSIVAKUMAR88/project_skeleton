.PHONY:all
include_path = ../../include
objects = ../../out/source
source = $(patsubst %.cpp,$(objects)/%.o,$(wildcard *.cpp))
includes=$(wildcard $(include_path)/*.h)
all:$(source) 

$(objects)/%.o:%.cpp $(includes)
	g++ -c $(CFLAGS) $< -o $@ -I $(include_path)
clean:
	-rm $(objects)/*.o
