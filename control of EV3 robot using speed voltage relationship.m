clc
c1= 18.2645;
c2 = 0.9945;
ud = 0.2*cos(2*pi*2*(10^6)*t);
syms s
ud_lap = laplace(vs);
vpa(ud_lap,5)
f_lap = ans;
vs = ((5*c2/s) + ((0.2*s)/((16*(10^12)*(pi^2)) + (s^2))))/(s+c1);
ilaplace(vs)
simplify(ans)
vpa(ans,5)
g=ans;
t = 0:0.01:5;
f = subs(g);
plot(t,f)
title('EV3 robot speed vs time plot')
xlabel('Time (second)') 
ylabel('Speed') 
