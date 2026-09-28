hepsi: derle calistir

derle:
	g++ -I ./include/ -o ./lib/Konum.o -c ./src/Konum.cpp
	g++ -I ./include/ -o ./lib/Labirent.o -c ./src/Labirent.cpp
	g++ -I ./include/ -o ./bin/Main ./lib/Konum.o ./lib/Labirent.o ./src/Main.cpp
	
calistir:
	./bin/Main
