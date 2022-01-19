#include "var.h"
#include "stateMachine.h"
#include "event.h"
#include "output.h"
#include "lcd.h"
#include "keypad.h"
#include "adc.h"
#include "config.h"
#include "pic18f4520.h"
#include "pwm.h"

void smInit(void) {
    setState(STATE_TEMPO);
}

void smLoop(void) {
    unsigned char evento;
    
    //m�quina de estados
    evento = eventRead();

    switch (getState()) {
        case STATE_ALARME:
            //execu��o de atividade
            if (evento == EV_RIGHT) {
                setAlarmLevel(getAlarmLevel() + 1);
            }
            if (evento == EV_LEFT) {
                setAlarmLevel(getAlarmLevel() - 1);
            }

            //gest�o da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_ALARME1);
            }
            break;
            case STATE_ALARME1://s� mostra na tela os valores P1 e P2 para facilitar
                //execu��o de atividade
                if (evento == EV_RIGHT) {
                    
                }
                if (evento == EV_LEFT) {
                    
                }

                //gest�o da maquina de estado
                if (evento == EV_ENTER) {
                    setState(STATE_TEMPO);
                }
                break;
        case STATE_TEMPO:

            //execu��o de atividade
            if (evento == EV_RIGHT) {
                setTime(getTime() + 1);
            }
            if (evento == EV_LEFT) {
                setTime(getTime() - 1);
            }

            //gest�o da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_IDIOMA);
            }
            break;

        case STATE_IDIOMA:

            //execu��o de atividade
            if (evento == EV_RIGHT) {
                setLanguage(getLanguage() + 1);
            }
            if (evento == EV_LEFT) {
                setLanguage(getLanguage() - 1);
            }

            //gest�o da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_ALARME);
            }
            break;
        case STATE_HORA:
            //execu��o de atividade
            if (evento == EV_RIGHT) {
                setState(STATE_ALARME);
            }
            if (evento == EV_LEFT) {
                setState(STATE_ALARME);
            }

            //gest�o da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_ALARME);
            }
            break;



    }
    teste1();//chama a verificao de ativacao do alarme
    
   
        
    
    outputPrint(getState(), getLanguage());
    }