function y = impulse(t)
    
    y = zeros(size(t, 1), size(t, 2));
    for i = 1:length(t)    
        if (t(i) < 1/2 && t(i) > -1/2)
            y(i) = 1;
        else
            y(i) = 0;
        end
    end
