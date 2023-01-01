del_G = [0,0.2,0.4,0.6,0.8,1];
U = [1,3,5,7,9];
R_s = 5;
G_s = 3;
del_Y = zeros(5,6);
for K=1:2:9
    for j=1:6
        %del_Y((i+1)/2,j) = del_G(j)*U(i); 
        del_Y((K+1)/2,j) = (K*R_s*del_G(j))/((1+(K*G_s))*(1+(K*(G_s+del_G(j)))));
    end
end
for i=1:5
    plot (del_G(:),del_Y(i,:),'-r');
    hold on;
end
xlabel('Modelling error','LineWidth',2);
ylabel('output error','LineWidth',2);
title('Modelling error Vs output error in closed loop control for different gain','LineWidth',5);
