f= @(y,t) -2*y*t;

t0=0;
y0=1;
tend=7;
n=260;
h=abs(tend-t0)/n;
%y(1)=y0;
t=[t0:h:tend]'; %to get an array of time

for i=1:n
    k1=-2*y0*t(i);
    ynew=y0+k1*h/2;
    tnew=t(i)+h/2;
    k2=-2*ynew*tnew;
    ynew=y0+k2*h/2;
    k3=-2*ynew*tnew;
    ynew=y0+k3*h;
    tnew=t(i)+h;
    k4=-2*ynew*tnew;
    y(i)= y0 + (k1+2*k2+2*k3+k4)*h/6;
    y0=y(i);
   % t0=t(i);
end

fprintf("%d",y0)

    
