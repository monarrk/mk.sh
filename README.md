# mk.sh
A short script for times when you don't want to type a lot.

### Why?
Because as of late I've been writing a lot of assembly and I've gotten a bit tired of typing stuff like
```
nasm -f elf64 main.asm
nasm -f elf64 lib.asm
ld -o main main.o lib.o
./main
```
every time I made a small edit.

### Small setup...
Make a directory called `mk` in /etc/ and, if you don't want to run as root every time, chmod 777 it.

### Usage
To add a directory to the list, run `mk.sh add`.
To run the script, run `mk.sh`.

### How does this work?
When you add a directory, it creates a file with the name of the dir in /etc/mk/DIR. When you run mk.sh, it simply finds the file and runs it.
