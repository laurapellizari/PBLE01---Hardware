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
    
    //máquina de estados
    evento = eventRead();

    switch (getState()) {
        case STATE_ALARME:
            //execução de atividade
            if (evento == EV_RIGHT) {
                setAlarmLevel(getAlarmLevel() + 1);
            }
            if (evento == EV_LEFT) {
                setAlarmLevel(getAlarmLevel() - 1);
            }

            //gestão da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_ALARME1);
            }
            break;
            case STATE_ALARME1://só mostra na tela os valores P1 e P2 para facilitar
                //execução de atividade
                if (evento == EV_RIGHT) {
                    
                }
                if (evento == EV_LEFT) {
                    
                }

                //gestão da maquina de estado
                if (evento == EV_ENTER) {
                    setState(STATE_TEMPO);
                }
                break;
        case STATE_TEMPO:

            //execução de atividade
            if (evento == EV_RIGHT) {
                setTime(getTime() + 1);
            }
            if (evento == EV_LEFT) {
                setTime(getTime() - 1);
            }

            //gestão da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_IDIOMA);
            }
            break;

        case STATE_IDIOMA:

            //execução de atividade
            if (evento == EV_RIGHT) {
                setLanguage(getLanguage() + 1);
            }
            if (evento == EV_LEFT) {
                setLanguage(getLanguage() - 1);
            }

            //gestão da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_ALARME);
            }
            break;
        case STATE_HORA:
            //execução de atividade
            if (evento == EV_RIGHT) {
                setState(STATE_ALARME);
            }
            if (evento == EV_LEFT) {
                setState(STATE_ALARME);
            }

            //gestão da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_ALARME);
            }
            break;



    }
    teste1();//chama a verificao de ativacao do alarme
    
   
        
    
    outputPrint(getState(), getLanguage());
    }