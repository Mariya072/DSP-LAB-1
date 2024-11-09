%Circular convolution using concentric circle method
clc;
close all;
clear all;
x=[2 1 2 1];
x=x(:,end:-1:1);
disp("Reversed x");
disp(x);
h=[1 2 3 4];
for i=1:length(x)
 x=[x(end) x(1:end-1)];
 y(i)=sum(x.*h);
end
disp("Convolution product y:");
disp(y);