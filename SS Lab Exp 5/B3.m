syms n
syms x(n)
syms h(n)

x(n) = (exp(-n))*heaviside(n);
h(n) = (2^(-n))*heaviside(n);
convolutionB(x, h)
