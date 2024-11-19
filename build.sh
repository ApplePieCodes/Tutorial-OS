nasm -felf64 boot.s -o boot.o
nasm -felf64 header.s -o header.o
x86_64-elf-gcc -c kernel.c -o kernel.o -ffreestanding
x86_64-elf-gcc -T linker.ld -o kernel.bin *.o -nostdlib -ffreestanding -std=gnu99
mv kernel.bin iso/boot/kernel.bin
rm *.o
grub-mkrescue iso -o kernel.iso