#ifndef _FUZZYPID_H_
#define _FUZZYPID_H_
#include "includes.h"

int CalcMembership(int value,int membership[],int bound[]);
void fuzzyPID(PID_Controller* obj);
void calculateD_partial(PID_Controller* obj);
void calculateD_full(PID_Controller* obj);
void calculateI(PID_Controller* obj);
void useConstantKpKiKd(PID_Controller* obj);
void PID_controler(PID_Controller* obj);

#endif