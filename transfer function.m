del_G = [0,0.2,0.4,0.6,0.8,1];
U = [1,3,5,7,9];
del_Y = zeros(5,6);
for i=1:5
    for j=1:6
        del_Y(i,j) = del_G(j)*U(i);  
    end
end
for i=1:5
    plot (del_G(:),del_Y(i,:),'-r');
    hold on;
end
xlabel('Modelling error','LineWidth',2);
ylabel('output error','LineWidth',2);
title('Modelling error Vs output error for different inputs','LineWidth',5);
