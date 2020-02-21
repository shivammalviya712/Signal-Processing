function plot_all(f)
  
    figure('name', 'Function');
    Plot(f);
    figure('name', 'Even Component');
    even_plot(f);
    figure('name', 'Odd Component');
    odd_plot(f);
    
    amplitude_scale(f);
    time_scale(f);
    time_shift(f);
    folding(f);