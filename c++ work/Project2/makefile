CC=g++ 
CPPFLAGS=--std=c++11

all: project2.cpp term.o polynomial.o
	$(CC) $(CPPFLAGS) project2.cpp term.o polynomial.o -o project2

term.o: term.cpp
	$(CC) $(CPPFLAGS) -c term.cpp

polynomial.o: polynomial.cpp
	$(CC) $(CPPFLAGS) -c polynomial.cpp

clean:
	rm -f *.o *.exe *~
