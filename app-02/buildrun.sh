nasm -g -f elf app.asm
ld -m elf_i386 app.o -o app
./app