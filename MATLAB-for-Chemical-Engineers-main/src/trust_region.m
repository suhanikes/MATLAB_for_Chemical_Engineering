clc
clear all
%sample
%a=5;
%b=2;
%out=func(a,b)

%example 1
x0=1.25;
out1=fsolve(@(x)func(x),x0)
both this format and the format in out2 works in this case
y0=1.0;
out2=fsolve(@func,y0)

%plot the graph for every value of iteration the solution we get
x0 = -10:10;
eqn=fsolve(@func,x0);
plot(x0,eqn)

%plot the normal function
z = -10:0.1:10;
eqn=func(z);
plot(z,eqn)

%main problem statement
%to solve the Soave-Redlich-Kwong equation
options = optimoptions('fsolve', 'Algorithm', 'levenberg-marquardt', 'Display', 'off');
p=1:1:40;
%v0=1.5;
r=8.314;
t=425.2;
%c=1;
%v0=r*t/c;
%out[][];
volumes = zeros(size(p));
tz=500:50:600;
for j= 1:length(tz)
    for i = 1:length(p)
    v0=r*t/(i*101.325);
    % Solve the equation for each pressure using fsolve
    volumes(i) = fsolve(@(v) func4(p(i)*101.325, v,tz(j)), v0, options);
    %out(j)(i)=volumes(i)
    end
    out=volumes
    figure()
    plot(p,volumes)
end
%eqn=fsolve(@(v) func4(p*101.325,v),v0);
