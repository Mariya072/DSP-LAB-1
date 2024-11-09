%Linear convolution using circular convolution
clc;
clear;
close all;
x=[1,2,3,4];
y=[1,1,1];
xl=length(x);
yl=length(y);
zl=(xl+yl)-1;
xn=[x zeros(1,zl-xl)];
yn=[y zeros(1,zl-yl)];
xa=fft(xn);
ya=fft(yn);
con=xa.*ya;
anss=ifft(con);
disp(anss);
answ=conv(x,y);
disp(answ);