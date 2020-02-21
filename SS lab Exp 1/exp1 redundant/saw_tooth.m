function saw_tooth(T, A);

t = -2*T:0.01:2*T;
y = zeros(1, length(t));
ind = find(0 < t & t < T);
y(ind) = A * t(ind);
plot(t, y, '-r', 'LineWidth', 3);
xlabel('Time');
ylabel('Saw Tooth');
ylim([0 2*A*T]);