dt = 0.001;
t = 0:dt:4*pi;
x_a = sin(t) + sin(2*t);
% maximum frequency of both the signal is 2
F_max = 2; 
subplot(6,1,1)
plot(t,x_a);
xlabel('time (sec)','LineWidth',2);
ylabel('x_a','LineWidth',2);
title('Analog continuous input signal','LineWidth',5);

%Sampling as per Nyquist criteria
f_sample = 2*F_max; % f_sample is also the Nyquist rate for sample
t_s = 1/f_sample;
%n = f_sample;
n_1 = 0:t_s:4*pi;
x_sample = sin(n_1)+sin(2*n_1);
subplot(6,1,2)
stem(n_1,x_sample);
xlabel('Samples (n)','LineWidth',2);
ylabel('x_s','LineWidth',2);
title('Sampled signal (as per Nyquist Criteria)','LineWidth',5);

%Sampling 1/2 times the Nyquist rate
f_sample_half = (1/2) * f_sample;
t_s1 = 1/f_sample_half;
%n = f_sample_half;
n_2 = 0:t_s1:4*pi;
x_sample_half = sin(n_2)+sin(2*n_2);
subplot(6,1,3)
stem(n_2,x_sample_half);
xlabel('Samples (n)','LineWidth',2);
ylabel('x_s','LineWidth',2);
title('Sampled signal 1/2 times of Nyquist Criteria rate','LineWidth',5);

%Sampling 2/3 times the Nyquist rate
f_sample_two_third = (2/3) * f_sample;
t_s2 = 1/f_sample_two_third;
%n = f_sample_half;
n_3 = 0:t_s2:4*pi;
x_sample_two_third = sin(n_3)+sin(2*n_3);
subplot(6,1,4)
stem(n_3,x_sample_two_third);
xlabel('Samples (n)','LineWidth',2);
ylabel('x_s','LineWidth',2);
title('Sampled signal 2/3rd times of Nyquist Criteria rate','LineWidth',5);

%Sampling 2 times the Nyquist rate
f_sample_two = (2) * f_sample;
t_s3 = 1/f_sample_two;
%n = f_sample_half;
n_4 = 0:t_s3:4*pi;
x_sample_two = sin(n_4)+sin(2*n_4);
subplot(6,1,5)
stem(n_4,x_sample_two);
xlabel('Samples (n)','LineWidth',2);
ylabel('x_s','LineWidth',2);
title('Sampled signal 2 times of Nyquist Criteria rate','LineWidth',5);

%Sampling 10 times the Nyquist rate
f_sample_ten = (10) * f_sample;
t_s4 = 1/f_sample_ten;
%n = f_sample_half;
n_5 = 0:t_s4:4*pi;
x_sample_ten = sin(n_5)+sin(2*n_5);
subplot(6,1,6)
stem(n_5,x_sample_ten);
xlabel('Samples (n)','LineWidth',2);
ylabel('x_s','LineWidth',2);
title('Sampled signal 10 times of Nyquist Criteria rate','LineWidth',5);




