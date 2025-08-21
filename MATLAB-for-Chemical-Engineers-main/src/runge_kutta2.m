f= @(y,t) -2*y*t;

t0=0;
y0=1;
tend=7;
n=20;
h=abs(tend-t0)/n;
y(1)=y0;
t=[t0:h:tend]'; %to get an array of time
for i=1:n
    k1=-2*y0*t(i);
    p=1;
    q=1;
    ynew=y0+q*k1*h;
    tnew=t0+p*h;
    k2=-2*ynew*tnew;
    a1=0.5;
    a2=0.5;
    y(i)=y0+(a1*k1+a2*k2)/h;
    y0=y(i);
end  %Heun's method
fprintf("Value by Huen's method %d \n",y0)

t0=0;
x0=1;
for j=1:n
    k11=-2*x0*t(j);
    p1=0.5;
    q1=0.5;
    ynew1=x0+q1*k11*h;
    tnew1=t0+p1*h;
    k21=-2*ynew1*tnew1;
    a11=0;
    a21=1;
    x(j)=x0+(a11*k11+a21*k21)/h;
    x0=x(j);
end  %Mid-point method
fprintf("Value by Mid-point method %d \n",x0)

t0=0;
z0=1;
for m=1:n
    k12=-2*z0*t(m);
    p2=0.75;
    q2=0.75;
    ynew2=z0+q2*k12*h;
    tnew2=t0+p2*h;
    k22=-2*ynew2*tnew2;
    a12=1/3;
    a22=2/3;
    z(m)=z0+(a12*k12+a22*k22)/h;
    z0=z(m);
end  %Raltson's method
fprintf("Value by Raltson's method %d \n",z0)