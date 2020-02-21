function y = fn_square(T, A, t);
    
    T = T/2;
    y = zeros(size(t, 1), size(t, 2));
    for i = 1:length(t)    
        if (-T < t(i) && t(i) < T)      
            y(i) = A;
        end 
    end
    
  
    
