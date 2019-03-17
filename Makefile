#Makefile

all: packet_print

packet_print: main.o print.o
	g++ -o packet_print main.o print.o

main.o: main.cpp print.h
	g++ -c -o main.o main.cpp

print.o: print.cpp print.h
	g++ -c -o print.o print.cpp

clean:
	rm -f *.o packet_print

