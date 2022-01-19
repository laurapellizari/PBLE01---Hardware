# 1 "stdio.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "stdio.c" 2
# 1 "./lcd.h" 1
# 23 "./lcd.h"
void lcdCommand(unsigned char cmd);
void lcdData(unsigned char valor);

void lcdString(char msg[]);
void lcdInt(int val);
void lcdInit(void);
void lcdIntAlarme (int val1);
# 1 "stdio.c" 2


void printf(char txt[16]) {
    int i;
    for (i = 0; i < 16; i++) {
        lcdData(txt[i]);
    }
}
