w = linspace(1,5);
v = 1:2:9;
T = zeros(5);
for i = 1:1:5
    T = 0.0692*(1 - (0.4953*w));
    plot (w,T,'r');
    hold on;
end
for i = 1:1:5
    T = 0.0692*(3 - (0.4953*w));
    plot (w,T,'g');
    hold on;
end
for i = 1:1:5
    T = 0.0692*(5 - (0.4953*w));
    plot (w,T,'b')
    hold on;
end
for i = 1:1:5
    T = 0.0692*(7 - (0.4953*w));
    plot (w,T,'r');
    hold on;
end
for i = 1:1:5
    T = 0.0692*(9 - (0.4953*w));
    plot (w,T,'g');
    hold on;
end
xlabel('speed (rad/sec)','LineWidth',2);
ylabel('Torque (N-m)','LineWidth',2);
title('Torque-Speed Relationship','LineWidth',5);
