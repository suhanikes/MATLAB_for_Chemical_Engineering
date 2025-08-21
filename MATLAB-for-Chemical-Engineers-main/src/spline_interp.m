f=@(x)(20.785 ./(x-0.03))-(2 ./(x .*(x+0.03)))-90;
a=0.165;
b=0.175;
if(f(a)*f(b)>0)
    fprintf('You  have to give the value for which f(a)*f(b)<0 ')
else
    while(abs(b-a)>=0.00001)
        c = (a*f(b)-b*f(a))/(f(b)-f(a));
        if(f(a)*f(c)<0)
            b=c;
        else
            a=c;
        end
    end
end
fprintf('Root is: %f',c)

% Domain
x = 100: 0.001: 200;

% Plotting function
plot(x,f(x))