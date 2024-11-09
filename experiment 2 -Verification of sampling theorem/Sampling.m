clc;
clear;
close all;

t = 0:0.01:1;
fm = 10;

y = sin(2*pi*fm*t);
subplot(2,2,1);
plot(t,y,'r');
hold on;
stem(t,y,'b');
hold off
legend('Continuous', 'Discrete');
xlabel('Time Index');
ylabel('Amplitude');
title('Signal')

fs1 = fm;
t1 = 0:1/fs1:1;
y1 = sin(2*pi*fs1*t1);
subplot(2,2,2);
plot(t1,y1,'r');
hold on;
stem(t1,y1,'b');
hold off;
legend('Continuous','Discrete')
title('Undersampling');

fs2 = 2*fm;
t2 = 0:1/fs2:1;
y2 = sin(2*pi*fs2*t2);
subplot(2,2,3);
plot(t2,y2,'r');
hold on;
stem(t2,y2,'b');
hold off;
legend('Continuous','Discrete')
title('Nyquist Sampling');

fs3 = 10*fm;
t3 = 0:1/fs3:1;
y3 = sin(2*pi*fs3*t3);
subplot(2,2,4);
plot(t3,y3,'r');
hold on;
stem(t3,y3,'b');
hold off;
legend('Continuous','Discrete')
title('Over Sampling');