syms n
syms x(n)
syms h(n)

x(n) = ((0.8)^(n))*heaviside(n);
h(n) = ((0.3)^(n))*heaviside(n);
convolutionB(x, h)
