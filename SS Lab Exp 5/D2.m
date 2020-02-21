syms n
syms x(n)
syms h(n)

x(n) = ((0.2)^(n))*heaviside(n);
h(n) = ((0.4)^(n))*heaviside(n);
correlationD(x, h)
