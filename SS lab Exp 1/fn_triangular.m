function y = fn_triangular(T, A, t)
  
    y = zeros(size(t, 1), size(t, 2));
    for i = 1:length(t)
        t(i) = rem(t(i), T);
        if (t(i) < 0)
            t(i) = T + t(i);
        end
    
        if (t(i) < T/2)
            y(i) =  A*t(i);
  
        else
            y(i) = A*(T-t(i));
        end
        
    end