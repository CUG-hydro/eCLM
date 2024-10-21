gcc -c hello.c -o hello.o
ar rcs libhello.a hello.o

gcc -shared -o libhello.so -Wl,--whole-archive libhello.a -Wl,--no-whole-archive
