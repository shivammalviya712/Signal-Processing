syms n
syms x(n)
syms h(n)

x(n) = heaviside(n) - heaviside(n-8);
h(n) = sin(2*pi*n/8) * (heaviside(n) - heaviside(n-8));
convolutionB(x, h)
