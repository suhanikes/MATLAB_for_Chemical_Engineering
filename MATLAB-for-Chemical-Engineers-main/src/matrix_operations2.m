clc
clear all

%take two matrix through user input and multiply
tf=true;
while(tf)
   prompt="Enter first matrix dimension";
   a=input(prompt);
   prompt="Enter second matrix dimension";
   b=input(prompt);
   if(isequaln(a(1,2),b(1,1)))
      prompt="Enter the first matrix";
      x=input(prompt);
      prompt="Enter the second matrix";
      y=input(prompt);
      C=zeros(a(1,1),b(1,2));
      for i=1:a(1,2)
         for j=1:b(1,2)
             for k=1:a(1,1)
              C(i,j)=C(i,j)+x(i,k)*y(k,j);
             end
         end
      end 
      tf=false;
     else
      disp("Not possible")
   end
end            
%p=x+y;
%z=x*y;
%[[5 1];[1 2]]
%[[1 2 3];[4 1 2]]


