section .multiboot2
header_start:
	dd 0xe85250d6
	dd 0 ; protected mode i386
	dd header_end - header_start
	dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start)) ; checksum

	; end tag
	dw 0
	dw 0
	dd 8
header_end: