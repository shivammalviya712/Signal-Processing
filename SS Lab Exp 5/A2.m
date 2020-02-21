syms t
syms x(t)
syms h(t)

x(t) = sin(pi * t) * (heaviside(t) - heaviside(t-1.5));
h(t) = 1.5*(heaviside(t) - heaviside(t-1.5)) - heaviside(t-2) + heaviside(t-2.5);
convolutionA(x, h);