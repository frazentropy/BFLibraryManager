# Makefile for Library
CC = g++
CXXFLAGS = -std=c++11
DFLAGS = -I/usr/local/include -I/usr/local/include/FL/images -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_THREAD_SAFE -D_REENTRANT
LFLAGS = /usr/local/lib/libfltk.a -lXfixes -lXext -lpthread -ldl -lm -lX11

all: gui

debug: CXXFLAGS += -g
debug: gui

rebuild: clean gui

gui: library_gui.cpp
	$(CC) $(CXXFLAGS) $(DFLAGS) -o gui library_gui.cpp $(LFLAGS)

cli: library_cli.cpp
	$(CXX) $(CXXFLAGS) -o cli library_cli.cpp

clean:
	-rm -f *.o gui cli

