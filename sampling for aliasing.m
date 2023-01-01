dt = 0.001;
t = 0:dt:10;
x_a = sin(2*pi*4000*t);
% maximum frequency of both the signal is 2
F_max = 4000; 
subplot(2,1,1)
plot(t,x_a); 
xlabel('time (sec)','LineWidth',2);
ylabel('x_a','LineWidth',2);
title('Analog continuous input signal','LineWidth',5);

%Sampling frequency at 20000 Hz
f_sample =20000; 
t_s = 1/f_sample;
n_1 = 0:t_s:10;
x_sample = sin(2*pi*F_max*n_1);
subplot(2,1,2)
stem(n_1,x_sample);
xlabel('Samples (n)','LineWidth',2);
ylabel('x_s','LineWidth',2);
title('Sampled signal at 20000 Hz','LineWidth',5);

