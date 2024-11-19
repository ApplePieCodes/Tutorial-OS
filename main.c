void kmain() {
	unsigned int value = 0x2f4b2f4f;
    long unsigned int address = 0xb8000;

    __asm__ volatile (
    	"movl %1, (%0)"
        :
        : "r"(address), "r"(value)
        : "memory"
   	);
}