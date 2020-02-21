#include <math.h>


double y_scale = 10;
double x_scale = 10;
double pi = 3.14;

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

    if (i < 80)
    {
        Serial.println(y);
        
        for (j = 0; j < 5; j += 1)
        {
            Serial.println(0); 
        }
    }
    i += 1;
}

double heaviside (float t) {

    if (t < 0)
        return 0;

    else if (t == 0)
        return 0.5 * y_scale;

    else 
        return 1 * y_scale;
}

double x (float t) {

    t = t / x_scale;
    return y_scale * sin(pi * t) * (heaviside(t) - heaviside(t-1.5));
    
}

double h (float t) {

    t = t / x_scale;
    return y_scale * (1.5 * (heaviside(t) - heaviside(t-1.5)) - heaviside(t - 2) + heaviside(t-2.5)) ;
    
}
