build:
	clang++ -std=c++17 -g -I . -c common/varint.cpp -o obj/varint.o
	clang++ -std=c++17 -g -I . -c libmulti/hash.cpp -o obj/hash.o
	clang++ -std=c++17 -g -I . -c libmulti/base.cpp -o obj/base.o
	clang++ -std=c++17 -g -I . -c libmulti/addr.cpp -o obj/addr.o
	clang++ -std=c++17 -g -I . -c libmulti/stream.cpp -o obj/stream.o
	clang++ -std=c++17 -g -lcryptopp -lboost_system -I . -o main main.cpp obj/*.o