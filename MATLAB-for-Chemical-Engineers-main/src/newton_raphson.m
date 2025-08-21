% Newton-Raphson Method  
% Initialization of Variables after Conversion    
n=22700/44.0;
a=9.26/1000000;
r=82.06/1000000;
b=90.7/1000000;
p=48.3;
t=384;
% Real gas equation as a function of Volume
f = @(v) v.^3 - (p*n*b + n*r*t)/p*v.^2 + n*n*a/p*v - n*n*n*a*b/p;
% Derivative of function with respect to volume
%df = @(v) 3*v.^2 - 2*(p*n*b+n*r*t)/p*v + n*n*a/p;
h= 10.^(-5);
df= @(v) (f(v+h) - f(v))/h;
% Initial volume(litres) calculated using ideal gas 
v0=336.9;
% Number of iterations
n = 25;
% Newton-Raphson method
if df(v0) ~=0
 for i = 1: n
 v1 = v0 - f(v0)/df(v0);
 v0 = v1;
 end
end
fprintf('Volume = %f litre',v1)
fprintf('\n Molar Volume = %f litre/mole',v1/(514.7742))
% Domain
x = [100:0.00001:400];
plot(x,f(x))


