f_sampling = [100,500,1000,5000,10000,20000];
%As per Nyquist criteria, sampled frequency (f_s > 2 * f_max) 
%Corresponding maximum frequency of sampling frequency 
f_max = f_sampling ./ 2;
plot(f_max,f_sampling);
xlabel('f-max','LineWidth',2);
ylabel('f-sampling','LineWidth',2);
title('f-max VS f-sampling','LineWidth',5);