dig = [00100, 00110, 01010, 10101, 11010];
vol = [-1.885, -3.96, -3.643, -6.562, -4.097];
stem(dig,vol)
% plot(bits,ctime,'-r');
% hold on;
xlabel('Digital Input','LineWidth',2);
ylabel('Analog voltage ','LineWidth',2);
title('Analog voltage vs digital input in R2R network','LineWidth',5);
