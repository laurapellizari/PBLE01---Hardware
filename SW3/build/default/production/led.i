# 1 "led.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "led.c" 2








void initLed (void){
    (*(__near unsigned char *)0xf95) = 0x00;
    (*(__near unsigned char *)0xf83) = 0xFF;
}

void ledON (int x){
    (((*(__near unsigned char *)0xf83)) |= (1<<x));
}


void ledOFF (int x){
    (((*(__near unsigned char *)0xf83)) &= ~(1<<x));
}
