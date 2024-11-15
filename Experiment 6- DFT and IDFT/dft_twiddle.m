clc;
clear;
close all;
x = input("Enter the Sequence");
N = input("Enter the value for N point DFT");
L = length(x);
twiddle_factors = zeros(N, N);
if N>=L
    x_new = [x, zeros(1,N-L)]; %zero padding
X = [zeros(1,N)]; %Creating N columns of 0 for initialising
for k = 0:N-1
    for n = 0:N-1
        twiddle = exp(-2*pi*1i*k*n/N); 
        twiddle_factors(k+1, n+1) = twiddle; 
        X(k+1) = X(k+1) + x(n+1) * twiddle;
    end
end
disp("DFT:"); 
disp(X);
else
    disp("DFT cannot be calculated")
end
