%secant method
clc
clear all
z1=0.65;
z2=0.2;
z3=0.15;
T=330;
F=100;

a1=6.8522;
b1=1064.33;
c1=232.0;

a2=6.8778;
b2=1171.53;
c2=224.4;

a3=6.9024;
b3=1268.12;
c3=216.9;

p1=10.^(a1-b1/(c1+T-273.15));
p2=10.^(a2-b2/(c2+T-273.15));
p3=10.^(a3-b3/(c3+T-273.15));

k1=p1/760;
k2=p2/760;
k3=p3/760;

f= @(x) z1/(x-1/(1-k1)) + z2/(x-1/(1-k2))+ z3/(x-1/(1-k3));
x0=0.01;
x1=0.78;

for i=1:100
    xn=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
    if (f(xn)< 1e-6)
        break
    else
        x0=x1;
        x1=xn;
    end
end
fprintf('Root is %f \n',xn);
v=xn*F;
l=F-v;
fprintf('V = %f mol/hr \n',v);
fprintf('L = %f mol/hr \n',l);


