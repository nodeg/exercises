SRCS = $(wildcard *.cpp)
PROGS = $(patsubst %.cpp,%,$(SRCS))
CC = g++
CFLAGS = -std=c++11 -O0 -g3 -pedantic -Wall -Wextra
.PHONY: all clean

all: $(PROGS)

%: %.cpp
	$(CC) $(CFLAGS)  -o $@ $<

clean:
	rm -f $(PROGS)

