%Circular Convolution using FFT
clc;
clear all;
close all;
x=input('enter the elements in x[n]:');
x_ind=input('enter the index of x[n]:');
h=input('enter the elements in h[n]:');
h_ind=input('enter the index of h[n]:');
figure;
subplot(3,1,1);
stem(x_ind,x);
title('x[n]');
xlabel('time');
ylabel('amplitude');
grid;
subplot(3,1,2);
stem(h_ind,h);
title('h[n]');
xlabel('time');
ylabel('amplitude');
grid;
len_x=length(x);
len_h=length(h);
N=max(len_x,len_h);
new_x=[x zeros(1,N-len_x)];
new_h=[h zeros(1,N-len_h)];
x1=fft(new_x);
h1=fft(new_h);
y1=x1.*h1;
y=ifft(y1);
ny=0:N-1;
disp(y);
subplot(3,1,3);
stem(ny,y);
title('Circular convolution output y[n]');
xlabel('time');
ylabel('amplitude');