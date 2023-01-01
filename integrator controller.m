error = [0,4,8,8,8,8];
time = [0,1,2,3,4,5];
U_t = zeros(1,6);
plot(time,error,'-r');
hold on;
for i=1:6
  if (i<=3)
    U_t(i) = 0.2*((i-1)*(i-1)); 
  else
    U_t(i) = 0.8*((i-1)-1);
  end
end
plot(time,U_t,'-b')
xlabel('Time (s)','LineWidth',2);
ylabel('Error','LineWidth',2);
title('Plot of error and control output versus time','LineWidth',5);
