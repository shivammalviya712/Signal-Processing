function triangular(T, A);

t = -4*T:0.01:4*T;
y = zeros(1, length(t));
ind = find(0 < t & t < T/2);
y(ind) = A * t(ind);
ind = find(T/2 <= t & t <= T);
y(ind) = A*(T - t(ind));
plot(t, y, '-r', 'LineWidth', 3);
xlabel('Time');
ylabel('Triangular');
ylim([0 T*A]);