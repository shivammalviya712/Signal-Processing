function step(A);

t = -4:0.01:4;
y = zeros(1, length(t));
ind = find(0 <= t);
y(ind) = A;

plot(t, y, '-r', 'LineWidth', 3);
xlabel('Time');
ylabel('Step');
ylim([0 2*max(y)]);
