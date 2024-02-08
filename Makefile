
.PHONY: build qemu

build:
	nasm -f bin -o build/boot.bin src/boot.asm

qemu:
	qemu-system-x86_64 -drive file=build/boot.bin,format=raw