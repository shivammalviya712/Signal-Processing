syms n
syms x(n)
syms h(n)

x(n) = n*heaviside(n);
h(n) = n*heaviside(n);
correlationD(x, h)
