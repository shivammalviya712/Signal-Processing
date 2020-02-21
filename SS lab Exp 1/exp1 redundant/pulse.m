function pulse(T, A, beta);

xran = [-2*T 2*T];
t = 0 : 0.01 : T;
y = zeros(1, length(t));
ind = find(0 < t & t < beta*T);
y(ind) = A * t(ind);
plot(t, y, '-r', 'LineWidth', 3);
xlabel('Time');
ylabel('Pulse');
xlim(xran); 
ylim(2*max(y));

