// -----------------------------------------------------------------------
//   Copyright (C) Rodrigo Almeida 2014
// -----------------------------------------------------------------------
//   Arquivo: keypad.c
//            Biblioteca de operação de um teclado matricial
//   Autor:   Rodrigo Maximiano Antunes de Almeida
//            rodrigomax at unifei.edu.br
//   Licença: GNU GPL 2
// -----------------------------------------------------------------------
//   This program is free software; you can redistribute it and/or modify
//   it under the terms of the GNU General Public License as published by
//   the Free Software Foundation; version 2 of the License.
//
//   This program is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//   GNU General Public License for more details.
// -----------------------------------------------------------------------




#include "keypad.h"
#include "pic18f4520.h"

static unsigned int valor = 0x00;

//Alterado para usar a placa PICGenius, botões 1, 2, 3, RB3, RB4, RB5
unsigned char kpRead(void) {
    PORTD = 0x01;
    return ~PORTB;
}


void kpInit(void) {
    TRISB = 0xff; //quatro entradas e quatro saidas
    TRISD = 0x00;
    
    BitClr(INTCON2, 7); //liga pull up
    //ADCON1 = 0b00001110; //apenas AN0 é analogico, a referencia é baseada na fonte
    ADCON1 = 0b00001101; //
}