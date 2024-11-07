%Q1
% Linear Convolution of :- Q1: x(n)=[1 2 1 1]  , h(n)=[1 1 1 1]

clc;
clear;
close;
t = 0:1:6;
t1 = 0:1:3;
t2 = 0:1:3;
xn1 = [1 2 1 1];
hn1 = [1 1 1 1];

yn1 = conv(xn1, hn1);

disp('Linear Convolution of :- Q1: x(n)=[1 2 1 1]  , h(n)=[1 1 1 1]')
disp(yn1);

subplot(2,3,1);
stem(t1,xn1);
axis([-1 5 0 5]);
xlabel('n');
ylabel('Amplitude');
title('x(n)');
grid on;

subplot(2,3,2);
stem(t2,hn1);
xlabel('n');
ylabel('Amplitude');
grid on;
axis([-1 5 0 5]);
title('h(n)');

subplot(2,3,3);
stem(t,yn1);
xlabel('n');
ylabel('Amplitude');
grid on;
axis([-1 10 0 11]);
title('Linear Convolution x(n)*h(n)');

%Q2
% Linear Convolution of x(n)=[1 2 1 2]  , h(n)=[3 2 1 2]

t = 0:1:6;
t1 = 0:1:3;
t2 = 0:1:3;
xn1 = [1 2 1 2];
hn1 = [3 2 1 2];
yn1 = conv(xn1, hn1);

disp('Linear Convolution of x(n)=[1 2 1 2]  , h(n)=[3 2 1 2]')
disp(yn1);

subplot(2,3,4);
stem(t1,xn1);
axis([-1 5 0 5]);
xlabel('n');
ylabel('Amplitude');
title('x(n)');
grid on;

subplot(2,3,5);
stem(t2,hn1);
xlabel('n');
ylabel('Amplitude');
grid on;
axis([-1 5 0 5]);
title('h(n)');

subplot(2,3,6);
stem(t,yn1);
xlabel('n');
ylabel('Amplitude');
grid on;
axis([-1 10 0 13]);
title('Linear Convolution x(n)*h(n)');