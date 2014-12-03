.PHONY: seq omp clean check

#SRC = main.c func.c filter.c util.c
SRC = func.c 
CFLAG = -lm -O3
PROG ?= filter


ifdef GPROF
CFLAG+= -O2 -pg
endif

ifdef MTRACE
CFLAG+= -DMTRACE
endif

seq : 
	gcc -o $(PROG) $(CFLAG) $(SRC) main.c filter.c util.c  
omp : 
	gcc -o $(PROG) $(CFLAG) -fopenmp  $(SRC) main.c filter.c util.c  
clean: 
	rm -f $(PROG)
check:
	@diff --brief correct.txt output.txt || true
checkmem:
	@mtrace $(PROG) mtrace.out || true


