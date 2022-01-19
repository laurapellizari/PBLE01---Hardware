# 1 "lcd.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "lcd.c" 2
# 21 "lcd.c"
# 1 "./lcd.h" 1
# 23 "./lcd.h"
void lcdCommand(unsigned char cmd);
void lcdData(unsigned char valor);

void lcdString(char msg[]);
void lcdInt(int val);
void lcdInit(void);
void lcdIntAlarme (int val1);
# 21 "lcd.c" 2

# 1 "./pic18f4520.h" 1
# 22 "lcd.c" 2






void Delay40us(void) {
    unsigned char i;
    for (i = 0; i < 10; i++);
}

void Delay2ms(void) {
    unsigned char i;
    for (i = 0; i < 50; i++) {
        Delay40us();
    }
}

void lcdCommand(unsigned char cmd) {
    (((*(volatile __near unsigned char*)0xF84)) &= ~(1<<(2)) );
    (((*(volatile __near unsigned char*)0xF84)) &= ~(1<<(0)) );

    (*(volatile __near unsigned char*)0xF83) = cmd;

    (((*(volatile __near unsigned char*)0xF84)) |= (1<<(1)));
    (((*(volatile __near unsigned char*)0xF84)) &= ~(1<<(1)) );

    if (((cmd) & (1<<(1)) )) {
        Delay2ms();
    } else {
        Delay40us();
    }
}

void lcdData(unsigned char valor) {
    (((*(volatile __near unsigned char*)0xF84)) |= (1<<(2)));
    (((*(volatile __near unsigned char*)0xF84)) &= ~(1<<(0)) );

    (*(volatile __near unsigned char*)0xF83) = valor;

    (((*(volatile __near unsigned char*)0xF84)) |= (1<<(1)));
    (((*(volatile __near unsigned char*)0xF84)) &= ~(1<<(1)) );

    (((*(volatile __near unsigned char*)0xF84)) &= ~(1<<(2)) );
    Delay40us();
}



void lcdInt(int val) {
    if (val < 0) {
        val = val * (-1);
        lcdData('-');
    }
    lcdData((val / 10000) % 10 + 48);
    lcdData((val / 1000) % 10 + 48);
    lcdData((val / 100) % 10 + 48);
    lcdData((val / 10) % 10 + 48);
    lcdData((val / 1) % 10 + 48);

}
void lcdIntAlarme (int val1){

    if (val1 < 0) {
        val1 = val1 * (-1);
        lcdData('-');
    }

    lcdData((val1 / 1000) % 10 + 48);
    lcdData((val1 / 100) % 10 + 48);
    lcdData((val1 / 10) % 10 + 48);
    lcdData((val1 / 1) % 10 + 48);

}

void lcdString(char msg[]) {
    int i=0;
    while (msg[i]!=0) {
        lcdData(msg[i]);
        i++;
    }
}

void lcdInit(void) {



    Delay2ms();
    Delay2ms();
    Delay2ms();
    Delay2ms();
    Delay2ms();
    Delay2ms();


    (((*(volatile __near unsigned char*)0xF96)) &= ~(1<<(2)) );
    (((*(volatile __near unsigned char*)0xF96)) &= ~(1<<(1)) );
    (((*(volatile __near unsigned char*)0xF96)) &= ~(1<<(0)) );
    (*(volatile __near unsigned char*)0xF95) = 0x00;
    (*(volatile __near unsigned char*)0xFC1) = 0b00001110;


    lcdCommand(0x38);
    Delay2ms();
    lcdCommand(0x38);
    Delay2ms();
    lcdCommand(0x38);
    Delay2ms();

    lcdCommand(0x0C);
    lcdCommand(0x06);
    lcdCommand(0x03);
    lcdCommand(0x01);
}
