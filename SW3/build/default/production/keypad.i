# 1 "keypad.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "keypad.c" 2
# 23 "keypad.c"
# 1 "./keypad.h" 1
# 23 "./keypad.h"
 unsigned char kpRead(void);
 void kpDebounce(void);
 void kpInit(void);
# 23 "keypad.c" 2

# 1 "./pic18f4520.h" 1
# 24 "keypad.c" 2


static unsigned int valor = 0x00;


unsigned char kpRead(void) {
    (*(volatile __near unsigned char*)0xF83) = 0x01;
    return ~(*(volatile __near unsigned char*)0xF81);
}


void kpInit(void) {
    (*(volatile __near unsigned char*)0xF93) = 0xff;
    (*(volatile __near unsigned char*)0xF95) = 0x00;

    (((*(volatile __near unsigned char*)0xFF1)) &= ~(1<<(7)) );

    (*(volatile __near unsigned char*)0xFC1) = 0b00001101;
}
