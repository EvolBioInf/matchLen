CC=gcc
export VERSION = $(shell bash ../scripts/version.sh) # The single, trailing blank is essential
export DATE    = $(shell bash ../scripts/date.sh) #    The single, trailing blank is essential
CFLAGS         = -DVERSION=\"$(VERSION)\" -DDATE=\"$(DATE)\" -O3 -Wall -Wshadow -pedantic -std=gnu99 -g -I../common/ -L../common/ #-pg

SRCFILES  = testMatchLen.c matchLen.c
OBJFILES  = testMatchLen.o matchLen.o
LIBS      = -lcommon -lm -lbsd -lgsl -lblas
EXECFILE  = testMatchLen

.PHONY : all
all : $(EXECFILE)
$(EXECFILE) : $(OBJFILES)
	$(CC) $(CFLAGS) -o $(EXECFILE) $(OBJFILES) $(LIBS)

testMatchLen.c: matchLen.org
	bash ../scripts/org2nw matchLen.org | notangle -RtestMatchLen.c > testMatchLen.c	
matchLen.c: matchLen.org
	bash ../scripts/org2nw matchLen.org | notangle -RmatchLen.c > matchLen.c
matchLen.h: matchLen.org
	bash ../scripts/org2nw matchLen.org | notangle -RmatchLen.h > matchLen.h
clean:
	rm -f *.o *~
test:
	bash ../scripts/matchLen.sh 
