
A=[2 5 1; 4 5 6; 3 5 7];
B=[-3 1 0]';
n=length(B);
x=zeros(n,1);
Aug=[A B];
%forward elimination
% column is j and row is i
for j=1:n-1
    for i=j+1:n
        m=Aug(i,j)/Aug(j,j);
        Aug(i,:)=Aug(i,:)-m*Aug(j,:);
    end
end
for k=n:-1:1
    x(k)= Aug(k,n+1)-Aug(k,k+1:n)*x(k+1:n)/Aug(k,k);
end

disp(x)
