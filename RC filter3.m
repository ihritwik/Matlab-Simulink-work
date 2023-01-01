t = tf([1], [0.0159 1])
sensor_data = fileread('colorsensor_red.txt')
data=str2num(sensor_data);
dtf_1 = c2d(t,0.1,'zoh')
dtf_2 = c2d(t,0.2,'zoh')
dtf_3 = c2d(t,0.5,'zoh')
