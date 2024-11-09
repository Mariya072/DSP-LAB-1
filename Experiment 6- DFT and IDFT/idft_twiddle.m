%IDFT 
clc;
clear;
close all;
X=input("Enter DFT sequence: ");
L=length(X);
N=input("Enter the value of N for N-point IDFT:");
if N>=L
 Xn=[X zeros(1,N-L)];
x=zeros(1,N);
twiddle_factors=zeros(N,N); 
for n=0:N-1
    for k=0:N-1
        twiddle =exp(2*1i*pi*k*n/N); 
        twiddle_factors(n+1,k+1)=twiddle; 
        x(n+1)=x(n+1)+X(k+1)*twiddle;
    end
end
disp("IDFT:");
x=x/N;
disp(x) 
else
    disp("IDFT cannot be calculated");
end