syms t
syms x(t)
syms h(t)

x(t) = rectangularPulse(t-0.5);
h(t) = rectangularPulse(t-0.5);
correlationC(x, h);