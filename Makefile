CXX=g++
CPPFLAGS=-Wall -Werror
LDFLAGS=-lglut -lGLU -lGL
SOURCES=robot.cpp RgbImage.cpp
EXECUTABLE=robot

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(SOURCES) -o $@ $(LDFLAGS) 

clean:
	$(RM) robot

.PHONY: all clean robot
