# 1 "output.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "output.c" 2
# 1 "./output.h" 1
# 10 "./output.h"
void outputInit(void);
void outputPrint(int numTela, int idioma);
# 1 "output.c" 2

# 1 "./lcd.h" 1
# 23 "./lcd.h"
void lcdCommand(unsigned char cmd);
void lcdData(unsigned char valor);

void lcdString(char msg[]);
void lcdInt(int val);
void lcdInit(void);
void lcdIntAlarme (int val1);
# 2 "output.c" 2

# 1 "./stateMachine.h" 1
# 14 "./stateMachine.h"
enum {
    STATE_IDIOMA,
    STATE_ALARME,
    STATE_ALARME1,
    STATE_TEMPO,
    STATE_HORA,
    STATE_FIM
};


void smInit(void);
void smLoop(void);
# 3 "output.c" 2

# 1 "./var.h" 1
# 11 "./var.h"
void varInit(void);

char getState(void);
void setState(char newState);
int getTime(void);
void setTime(int newTime);
int getAlarmLevel(void);
int getAlarmLevel1(void);
void setAlarmLevel(int newAlarmLevel);
void setAlarmLevel1(int newAlarmLevel);
char getLanguage(void);
void setLanguage(char newLanguage);
int retornaHora(void);
void teste1 (void);
# 4 "output.c" 2

# 1 "./rtc.h" 1
# 23 "./rtc.h"
# 1 "./pic18f4520.h" 1
# 24 "./rtc.h" 2



    void ht1380write(unsigned char addr, unsigned char data);
    unsigned char ht1380read(unsigned char addr);

    unsigned char rtcGetSeconds(void);
    unsigned char rtcGetMinutes(void);
    unsigned char rtcGetHours(void);
    unsigned char rtcGetDate(void);
    unsigned char rtcGetMonth(void);
    unsigned char rtcGetYear(void);
    unsigned char rtcGetDay(void);



    void rtcPutSeconds(unsigned char seconds);
    void rtcPutMinutes(unsigned char minutes);
    void rtcPutHours(unsigned char hours);
    void rtcPutDate(unsigned char date);
    void rtcPutMonth(unsigned char month);
    void rtcPutDay(unsigned char day);
    void rtcPutYear(unsigned char year);

    void rtcSetDateTime(void);

    void rtcInit();
# 5 "output.c" 2






static char * msgs[STATE_FIM][4] = {
    {"Alterar idioma  ", "Change language ","Sprache andern  ","Changer la langu"},
    {"Alterar alarme  ", "Change alarm    ","Alarm andern    ","Changer D alarme"},
    {"Valor da flag   ", "Flag value      ","Flaggenwert     ","Valeur du signal"},
    {"Alterar tempo   ", "Change time     ","Zeit andern     ","Changer le temp "},

    {"Horas           ", "Time            ","Zeit            ","Heure           "}
};





void outputPrint(int numTela, int idioma) {

    if (numTela == STATE_TEMPO) {
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getTime());
        lcdString("           ");
    }
    if (numTela == STATE_ALARME) {
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getAlarmLevel());
        lcdString("           ");
    }
    if (numTela == STATE_ALARME1) {
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);

        lcdCommand(0xC0);

        lcdString("P1 ");
        lcdIntAlarme(adcRead1());
        lcdString(" P2 ");
        lcdIntAlarme(adcRead2());
        lcdString("           ");
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
