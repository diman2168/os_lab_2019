gcc -c revert_string.c -o revert_string_static.o
ar src revert_string.a revert_string_static.o
gcc -c -fPIC revert_string.c -o revert_string_dynamic.o
gcc -shared revert_string_dynamic.o -o revert_string.so