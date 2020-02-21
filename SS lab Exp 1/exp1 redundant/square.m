function square(T, A);
T = T/2;
t = -4*T:0.01:4*T;
y = zeros(1, length(t));
ind = find(-T < t & t < T);
y(ind) = A;

plot(t, y, '-r', 'LineWidth', 3);
xlabel('Time');
ylabel('Square');
ylim([0 2*A]);