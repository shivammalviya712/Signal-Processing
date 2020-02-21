t = -1:0.01:1;
y = sin(2 * pi * t);
plot(t, y, '-r', 'LineWidth', 3);
xlabel('Time');
ylabel('Sin');
hold on;
gnd = zeros(1, length(t));
plot(t, gnd, '-g', 'LineWidth', 1);
set(gca, 'xtick', [], 'ytick', [])


