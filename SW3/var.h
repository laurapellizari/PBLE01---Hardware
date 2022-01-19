/* 
 * File:   alarme.h
 * Author: Avell
 *
 * Created on 14 de Junho de 2017, 16:10
 */

#ifndef VAR_H
#define	VAR_H

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
int  retornaHora(void);
void teste1 (void);
#endif	/* VAR_H */
