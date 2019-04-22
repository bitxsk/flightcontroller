#include  "Beep.h"


Beep__ *Beep;


void Beep_Init()
{
  static Beep__ Beep_0;
  Beep = &Beep_0;
}
