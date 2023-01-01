ctime = [8, 10, 12, 16, 32, 64];
bits = [8, 10, 12, 16, 32, 64];
plot(bits,ctime,'-r');
hold on;
xlabel('Number of bits','LineWidth',2);
ylabel('Conversion Time (micro sec) ','LineWidth',2);
title('Number of bits vs conversion time in SAR type ADC','LineWidth',5);
