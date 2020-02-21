function y = x2(t)
    
    y = 2*(heaviside(t, 1) - heaviside(t-3, 1));

