% Quasi-Newton-Raphson Method
clc
clear all
close all

Re = logspace(2,8,1000); %To generate the numbers in the power of 10s
epsilon_array = [10e-6, 5*10e-6, 10e-5, 5*10e-5, 10e-4, 2*10e-4, 5*10e-4, 0.001, 0.002,  0.005, 0.01, 0.015, 0.02, 0.03 0.04, 0.05];
%friction_factor = zeros(numel(epsilon_array), numel(Re));
for i= 1:numel(epsilon_array)
    for j= 1:numel(Re)
        e= epsilon_array(i);
        if Re(j) <2000
            friction_factor(i,j)= 64/Re(j);
        elseif Re(j) >3500
            friction_factor(i,j)=  fzero(@(f)1/sqrt(f) + 2*log10(e/3.7 + 2.51/(Re(j)* sqrt(f))),[10.^-6,1]);
        else
            friction_factor(i,j)=NaN;
        end
    end
loglog(Re, friction_factor);
hold on;
end
grid on;
xlabel('Re')
ylabel('friction factor')
title('moody chart')
