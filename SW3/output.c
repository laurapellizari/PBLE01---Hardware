#include "output.h"
#include "lcd.h"
#include "stateMachine.h"
#include "var.h"
#include "rtc.h"

#define NUM_IDIOMAS 4

//msgs com 16 caracteres
//1 msg por estado (apenas linha de cima)
static char * msgs[STATE_FIM][NUM_IDIOMAS] = {
    {"Alterar idioma  ", "Change language ","Sprache andern  ","Changer la langu"},
    {"Alterar alarme  ", "Change alarm    ","Alarm andern    ","Changer D alarme"},
    {"Valor da flag   ", "Flag value      ","Flaggenwert     ","Valeur du signal"},
    {"Alterar tempo   ", "Change time     ","Zeit andern     ","Changer le temp "},
    
    {"Horas           ", "Time            ","Zeit            ","Heure           "}
};

/*void outputInit(void) {
    lcdInit();
}*/

void outputPrint(int numTela, int idioma) {

    if (numTela == STATE_TEMPO) {
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getTime());
        lcdString("           ");//para apagar os textos depois do numero
    }
    if (numTela == STATE_ALARME) {
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getAlarmLevel());
        lcdString("           ");//para apagar os textos depois do numero
    }
    if (numTela == STATE_ALARME1) {
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        //lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        
        lcdString("P1 ");
        lcdIntAlarme(adcRead1());
        lcdString(" P2 ");
        lcdIntAlarme(adcRead2());
        lcdString("           ");//para apagar os textos depois do numero
    }
    if (numTela == STATE_IDIOMA) {
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        if (getLanguage() == 0) {
            lcdString("Portugues       ");
        }
        if (getLanguage() == 1) {
            lcdString("English         ");
        }
        if (getLanguage() == 2) {
            lcdString("Deutsche        ");
        }
        if (getLanguage() == 3) {
            lcdString("Francais        ");
        }
       

    }
    
    
}

