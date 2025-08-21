clc
clear all
db=readtable("sampledata.txt");
for i=1:7
    X(i,1)=1;
    X(i,2)=db.x(i);
    P(1,i)=db.x(i);
    Y(i,1)=db.y(i);
end
disp(X);
disp(Y');
LH=X'*X
RH=X'*Y
a=LH\RH
z= a(1)+a(2)*P;

hold on
plot(P,z)
scatter(db.x,db.y)

prompt="Enter the temp";
p=input(prompt);
ans=a(1)+a(2)*p

%direct use of the keyword for linear regression
mdl=fitlm(P,Y)
plot(mdl)
