% DFT
clc;
clear;
close all;
x = input("Enter the Sequence");
N = input("Enter the value for N point DFT");
L = length(x);
if N>=L
    x_new = [x, zeros(1,N-L)]; %zero padding
X = [zeros(1,N)]; %Creating N columns of 0 for initialising

for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x_new(n+1).*exp(-1i*2*pi*k*n/N); %Equation for DFT
    end
end
disp("DFT without inbuilt function:");
disp(round(X));
disp("DFT using FFT:");
y = fft(x_new, N);
disp(round(y));

mag = abs(X);
subplot(2,1,1);
stem(0:N-1, mag);
title('Magnitude Spectrum');
xlabel('Frequency');
ylabel('Magnitude');

phase = angle(X);
subplot(2,1,2);
stem(0:N-1,phase,'b');
title('Phase Spectrum');
xlabel('Frequency');
ylabel('Phase');

else 
    disp('DFT cannot be calculated');
end