%Regula-falsi Method
f= @(x) (2.^x - 3);
a=2.3;
b=3;
if f(a)*f(b)>0
    a=a-1;
    b=b+1;
end
while f(a)*f(b)<0
    c= (a*f(b)-b*f(a))/(f(b)-f(a));
    if f(a)*f(c)<0
        b=c;
    end
    if f(b)*f(c)<0
        a=c;
    end
    if f(c)==0
        fprintf('Root is %f',c)
        break
    end
    
end

