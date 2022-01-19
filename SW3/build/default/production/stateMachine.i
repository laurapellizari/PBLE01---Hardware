# 1 "stateMachine.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "stateMachine.c" 2
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
# 1 "stateMachine.c" 2

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
# 2 "stateMachine.c" 2

# 1 "./event.h" 1
# 10 "./event.h"
enum{
    EV_UP,
    EV_DOWN,
    EV_LEFT,
    EV_RIGHT,
    EV_ENTER,
    EV_NOEVENT
};
void eventInit(void);
unsigned int eventRead(void);
# 3 "stateMachine.c" 2

# 1 "./output.h" 1
# 10 "./output.h"
void outputInit(void);
void outputPrint(int numTela, int idioma);
# 4 "stateMachine.c" 2

# 1 "./lcd.h" 1
# 23 "./lcd.h"
void lcdCommand(unsigned char cmd);
void lcdData(unsigned char valor);

void lcdString(char msg[]);
void lcdInt(int val);
void lcdInit(void);
void lcdIntAlarme (int val1);
# 5 "stateMachine.c" 2

# 1 "./keypad.h" 1
# 23 "./keypad.h"
 unsigned char kpRead(void);
 void kpDebounce(void);
 void kpInit(void);
# 6 "stateMachine.c" 2

# 1 "./adc.h" 1
# 22 "./adc.h"
 void adcInit(void);
 int adcRead1(void);
    int adcRead2(void);
# 7 "stateMachine.c" 2

# 1 "./config.h" 1
# 38 "./config.h"
#pragma config MCLRE=ON
#pragma config OSC=HS
#pragma config WDT=OFF
#pragma config LVP=OFF
#pragma config DEBUG = OFF
#pragma config WDTPS = 1
# 8 "stateMachine.c" 2

# 1 "./pic18f4520.h" 1
# 9 "stateMachine.c" 2

# 1 "./pwm.h" 1
# 23 "./pwm.h"
 void pwmSet1(unsigned char porcento);
 void pwmSet2(unsigned char porcento);
 void pwmFrequency(unsigned int freq);
 void pwmInit(void);
# 10 "stateMachine.c" 2


void smInit(void) {
    setState(STATE_TEMPO);
}

void smLoop(void) {
    unsigned char evento;


    evento = eventRead();

    switch (getState()) {
        case STATE_ALARME:

            if (evento == EV_RIGHT) {
                setAlarmLevel(getAlarmLevel() + 1);
            }
            if (evento == EV_LEFT) {
                setAlarmLevel(getAlarmLevel() - 1);
            }


            if (evento == EV_ENTER) {
                setState(STATE_ALARME1);
            }
            break;
            case STATE_ALARME1:

                if (evento == EV_RIGHT) {

                }
                if (evento == EV_LEFT) {

                }


                if (evento == EV_ENTER) {
                    setState(STATE_TEMPO);
                }
                break;
        case STATE_TEMPO:


            if (evento == EV_RIGHT) {
                setTime(getTime() + 1);
            }
            if (evento == EV_LEFT) {
                setTime(getTime() - 1);
            }


            if (evento == EV_ENTER) {
                setState(STATE_IDIOMA);
            }
            break;

        case STATE_IDIOMA:


            if (evento == EV_RIGHT) {
                setLanguage(getLanguage() + 1);
            }
            if (evento == EV_LEFT) {
                setLanguage(getLanguage() - 1);
            }


            if (evento == EV_ENTER) {
                setState(STATE_ALARME);
            }
            break;
        case STATE_HORA:

            if (evento == EV_RIGHT) {
                setState(STATE_ALARME);
            }
            if (evento == EV_LEFT) {
                setState(STATE_ALARME);
            }


            if (evento == EV_ENTER) {
                setState(STATE_ALARME);
            }
            break;



    }
    teste1();




    outputPrint(getState(), getLanguage());
    }
