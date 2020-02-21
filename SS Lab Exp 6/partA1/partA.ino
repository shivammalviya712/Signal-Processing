#include <math.h>


double amp_scale_root = 10;


void setup() {

  Serial.begin(9600);      
}

void loop() {

    static int i = 0;
    int j;
    double y = 0;
    
    for(j = 0; j < 20; j += 1)
    {
        y += x(j)*h(i-j);   
    }

    if (i < 50)
    {
      
        for (j = 0; j < 5; j += 1)
        {
            Serial.println(0); 
        }
        
        Serial.println(y);
    }
    i += 1;
}


double heaviside (float t) {

    if (t < 0)
        return 0;

    else if (t == 0)
        return 0.5;

    else 
        return 1;
}

double x (float t) {
  
    t = t/10;  
    return amp_scale_root * exp(-t) * heaviside(t);
    
}

double h (float t) {

    t = t/10;
    return amp_scale_root * exp(-2*t) * heaviside(t);
    
}
