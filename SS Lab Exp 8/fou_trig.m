function y = fou_trig(x, n, T)

    syms t
    
    w = 2*pi / T;
    f = x;
    a = int(f, t, 0, T) / T;
    y = a;
    
    for j = 1:n
    
        f = x * cos(j*w*t);
        a = 2 * int(f, t, -T/2, T/2) / T;
        f = x * sin(j*w*t);
        b = 2 * int(f, t, -T/2, T/2) / T;
        y = y + a * cos(j*w*t) + b * sin(j*w*t);
    
    end
