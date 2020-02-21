function y = fn_pulse(T, A, beta, t);
  
    y = zeros(size(t, 1), size(t, 2));
    for i = 1:length(t)
        y(i) = 0;
        t(i) = rem(t(i), T);
        if (t(i) < 0)
            t(i) = T + t(i);
        end
    
        if (t(i) < T*beta)
            y(i) =  A ;
        end
    end
  

