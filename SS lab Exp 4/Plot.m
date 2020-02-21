function Plot(fun, tmin, tmax)

xran = [tmin tmax];
t = tmin : 0.01 : tmax;
y = fun(t);
plot(t, y, '-r', 'LineWidth', 3);
xlabel('Time');
ylabel('Signal');
xlim(xran);
 
