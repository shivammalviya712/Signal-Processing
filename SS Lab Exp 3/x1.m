function y = x1(t)
    
    y = heaviside(t+0.5, 1) - heaviside(t-0.5, 1);
    

