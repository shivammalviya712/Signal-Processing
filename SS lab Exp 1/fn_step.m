function y = fn_step(A, t)
  
    y = zeros(size(t, 1), size(t, 2));
    
    for i = 1:length(t)        
        if (0 <= t(i))
            y(i) = A;
        end
    end
    