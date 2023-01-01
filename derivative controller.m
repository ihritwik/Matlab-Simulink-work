error =[0,2,4,6,6,6,5,4,3,2,1,0];
time = [0,1,2,3,4,5,6,7,8,9,10,11];
U_t = zeros(1,12);
plot(time,error,'-r');
hold on;
for i=1:12
  if (i<=4)
    U_t(i) = -1;
  elseif ((i>4) && (i<=6))
    U_t(i) = 0;
  elseif (i>6)
    U_t(i) = 0.5;
  end
end

plot(time,U_t,'-b')
hold on;

xlabel('Time (s)','LineWidth',2);
ylabel('Error','LineWidth',2);
title('Plot of error and control output versus time','LineWidth',5);
