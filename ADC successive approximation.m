Vin = 5.3;  %Input Voltage
Vref = 8; %Reference voltage
bits = 5; %Number of bits
i = bits - 1;
bits_arr = zeros(1,bits);
V_ADC = Vref;
m=1;
j=1:1:bits+1;
k = zeros(1,bits);
while i >= 1
        if (Vin ~= V_ADC)
           if Vin < V_ADC
               V_ADC = V_ADC + ((2^(i-1))-(2^i))*Vref/(2^bits);
               i=i-1;
           end
           elseif Vin > V_ADC
               i = i-1;
               V_ADC = V_ADC +(2^i)*Vref/(2^bits);
        end

    
end

plot(j,V_ADC,'-r');
hold on; 
 %k=[3,4,6,7];
%  plot(j,k(j),'-r');
%  hold on;
 xlabel('Iteration','LineWidth',2);
 ylabel('ADC output','LineWidth',2);
 title('ADC output VS number of iteration in SAR ADC','LineWidth',5);             
%           print(V_ADC);