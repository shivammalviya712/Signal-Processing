#include <math.h>


double y_scale = 10;
double x_scale = 6;
double pi = 3.14;

void setup() {

  Serial.begin(9600);      
}

void loop() {

    static int i = -40;
    int j;
    double y = 0;
    
    for(j = 0; j < 25; j += 1)
    {
        y += x(j) * x(i+j);   
    }

    if (i < 80)
    {
        Serial.println(y);
        
        for (j = 0; j < 3; j += 1)
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
    return y_scale * t * heaviside(t);
    
}
