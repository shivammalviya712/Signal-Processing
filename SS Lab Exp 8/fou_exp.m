function [y, C] = fou_exp(x, n, T)

    syms t
    y = 0;
    w = 2*pi / T;
    C = sym(zeros(2*n+1, 1));
    
    for j = -n:n
    
        f = @(t) x(t) .* exp(-w*t*j*1i);
        C(j+n+1, 1) = integral(f, -T/2, T/2) / T;
        y = y + C(j+n+1, 1) * exp(w*t*j*1i);
    
    end
    
