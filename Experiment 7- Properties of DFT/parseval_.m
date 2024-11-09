clc;
clear;
close all;
x1 = [1 2 3 4];
x2 = [1 1 1 1];
N=max(length(x1),length(x2));
y = x1 .* conj(x2);
y1 = sum(y);
disp(y1);
X1 = fft(x1);
X2 = fft(x2);

Y = X1 .* conj(X2);
Y1 = sum(Y)/N;
disp(Y1);

if isequal(y1,Y1)
    disp('Parseval property verified!');
else
    disp('Parseval property not verified.');
end