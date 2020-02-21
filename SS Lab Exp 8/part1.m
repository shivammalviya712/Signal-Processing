function part1(tau, T, n1, n2, flag1, flag2)

    syms t;
    
    if (flag1 == 1)
        x = x1(tau, T);
    else
        x = x2(tau, T);
    end
       
    if (flag2 == 1)
        [yn1, C1] = fou_exp(x, n1, T);
        [yn2, C2] = fou_exp(x, n2, T);
    else
        yn1 = fou_trig(x, n1, T);
        yn2 = fou_trig(x, n2, T);
    end
    
    % PLOTTING
    Plot(x, yn1, yn2, T);
        


