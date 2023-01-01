vel1 = [0,0;1,0.1;2,0.15;3,0.2;4,0.2;5,0.2;6,0.15;7,0.15;8,0.1;9,0.2;10,0.2];
i=1:1:11;
plot(i-1,vel(i,2),'-r');
hold on;
xlabel('time (sec)','LineWidth',2);
ylabel('speed','LineWidth',2);
title('Speed Versus Time','LineWidth',5);
j=1:1:11;
distance1=0;
distance1 = distance1+((j-1)*vel(j,2));
plot(j,distance1);
hold on;

xlabel('time (sec)','LineWidth',2);
ylabel('distance','LineWidth',2);
title('distance Versus Time','LineWidth',5);
