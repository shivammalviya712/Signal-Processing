function Plot(fun, tmin, tmax)

xran = [-10 10];
t = tmin : 0.01 : tmax;
n = length(t);
y = zeros(1, n);
for x = 1:n;
    y(x) = fun(t(x));
end
plot(t, y, '-r', 'LineWidth', 3);
xlabel('Time');
ylabel('Signal');
xlim(xran); 



