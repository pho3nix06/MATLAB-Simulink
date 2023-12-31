clc;
%clear all;
close all;

Rotor_speed = [274.364,847.660,1368.413,1771.265,1794.118,1794.221,1794.183,1794.180,1852.926,1852.932,1852.908,1852.916,1707.186,1717.735,1720.878,1721.450,1793.768,1794.228,1794.160,1794.155,1794.154,1794.154,1794.154,17794.154];
Torque = [16.766,22.560,790.395,4.761,0.435,0.408,0.435,0.435,-11.727,-11.668,-11.729,-11.722,12.582,12.674,12.440,12.400,0.512,0.425,0.378,0.379,0.379,0.379,0.379,0.379];
plot (Rotor_speed,Torque)
xlabel('Rotor_speed(RPM)....');
ylabel('Torque(Nm).....');
hold on
plot (Rotor_speed,Torque,'r*');
dim = [0.82,0.8,0.1,0.1]; 
str = {'Suchitran Das','34201619005'}; 
annotation ('textbox' , dim , 'String' , str, 'FitBoxToText' , 'on');
grid on;
%grid minor;
