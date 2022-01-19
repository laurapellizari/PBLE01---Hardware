#include "adc.h"
#include "pic18f4520.h"

void adcInit(void) {
    BitSet(TRISA, 0); //seta o bit 0 como entrada

    ADCON0 = 0b00000001; //seleciona o canal 0 e liga o ad
    ADCON1 = 0b00001101; //AN0 e AN1 sao analogicos, a referencia é baseada na fonte
    ADCON2 = 0b10101010; //FOSC /32, Alinhamento à direita e tempo de conv = 12 TAD
}

int adcRead1(void) {
    unsigned int ADvalor;
    ADCON0 = 0b00000001;
    ADCON0 |= 0b00000010; //inicia conversao

    while (BitTst(ADCON0, 1)); // espera terminar a conversão;

    ADvalor = ADRESH; // le o resultado
    ADvalor <<= 8;
    ADvalor += ADRESL;
    return ADvalor/64;//0~1024
}

int adcRead2(void) {
    unsigned int ADvalor;
    ADCON0 = 0b00000101; //seleciona o canal 1 e liga o ad
    ADCON0 |= 0b00000010; //inicia conversao

    while (BitTst(ADCON0, 1)); // espera terminar a conversão;

    ADvalor = ADRESH; // le o resultado
    ADvalor <<= 8;
    ADvalor += ADRESL;
    return ADvalor/64;//0~1024
}