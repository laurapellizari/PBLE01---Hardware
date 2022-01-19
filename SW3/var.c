#include "var.h"
#include "rtc.h"
#include "adc.h"
#include "pic18f4520.h"
#include "pwm.h"

//variáveis a serem armazenadas
static char state;
static char language;
static int time;
static int alarmLevel;
static int alarmLevel1;
//TRISC = 0x00;
void varInit(void) {
    state = 0;
    time = 1000;
    alarmLevel = 512;
    alarmLevel1 = 512;
}

char getState(void) {
    return state;
}

void setState(char newState) {
    state = newState;
}

int getTime(void) {
    return time;
}

void setTime(int newTime) {
    time = newTime;
}

int getAlarmLevel(void) {
    return alarmLevel;
}

int getAlarmLevel1(void) {
    return alarmLevel1;
}

void setAlarmLevel(int newAlarmLevel) {
    alarmLevel = newAlarmLevel;
}

void setAlarmLevel1(int newAlarmLevel1) {
    alarmLevel1 = newAlarmLevel1;
}
//pmwInit();
//teste1 faz a verificaçao pra ver se a flag do alarme ta dentro de P1 e P2, se tiver liga vento, se não tiver, desliga
void teste1(void) {
    
    if ((adcRead1() >= getAlarmLevel()) && (adcRead2() <= getAlarmLevel()) || (adcRead1() <= getAlarmLevel()) && (adcRead2() >= getAlarmLevel()) ) {
        pwmSet1(100);
        pwmFrequency(1000);
    }
    
     else {
        pwmSet1(0);
        pwmFrequency(0);
        
    }
}

char getLanguage(void) {
    return language;
}

void setLanguage(char newLanguage) {
    //só tem 4 linguas
    //usando resto pra evitar colocar valor errado
    language = newLanguage % 4;
}

int retornaHora(void) {
    int z = 0;

    z = rtcGetHours();

    return z;
}