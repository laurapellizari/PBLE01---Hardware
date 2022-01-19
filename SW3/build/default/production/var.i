# 1 "var.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "var.c" 2
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
# 1 "var.c" 2

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
# 2 "var.c" 2

# 1 "./adc.h" 1
# 22 "./adc.h"
 void adcInit(void);
 int adcRead1(void);
    int adcRead2(void);
# 3 "var.c" 2

# 1 "./pic18f4520.h" 1
# 4 "var.c" 2

# 1 "./pwm.h" 1
# 23 "./pwm.h"
 void pwmSet1(unsigned char porcento);
 void pwmSet2(unsigned char porcento);
 void pwmFrequency(unsigned int freq);
 void pwmInit(void);
# 5 "var.c" 2



static char state;
static char language;
static int time;
static int alarmLevel;
static int alarmLevel1;

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


    language = newLanguage % 4;
}

int retornaHora(void) {
    int z = 0;

    z = rtcGetHours();

    return z;
}
