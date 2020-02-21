syms t
syms x(t)
syms h(t)

x(t) = exp(-t) * heaviside(t);
h(t) = exp(-2*t) * heaviside(t);
convolutionA(x, h);