nasm boot.asm -o boot.bin

dd if=boot.bin of=a.img bs=1440k count=1 conv=notrunc