function impulse() ;
t = -4:0.01:4;
y = zeros(1, length(t));
i = find(t == 0);
y(i) = 1;
plot(t, y, '-r', 'LineWidth', 3);
xlabel('Time');
ylabel('Impulse');
ylim([0 2]);

