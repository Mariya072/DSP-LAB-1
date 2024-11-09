%Circular Time shift property of DFT
clc;
close all;
clear all;
x = input("Enter the sequence:");
m = input("Enter the circular time shift value:");
N=length(x);
k=0:N-1;
X = fft(x);
x_shifted = circshift(x,m);
X_shifted = fft(x_shifted);
X_phase_shift = exp(-1i * 2 * pi * k * m / N) .* X;
disp("DFT{x(n-m)}:");
disp(round(X_shifted, 5));
disp("X(k)exp(-1i * 2 * pi * k * m / N):");
disp(round(X_phase_shift, 5));
% Check if the values match
if isequal(round(X_shifted, 5), round(X_phase_shift, 5))
 disp('Circular time shift property verified!');
else
 disp('Circular time shift property not verified.');
end