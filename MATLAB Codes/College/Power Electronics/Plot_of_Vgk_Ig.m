clc;
clear all;
close all;

FiringAngle = [19.996 39.992 59.998 79.985 99.981 139.973 179.965 199.961 239.954 279.946 299.958 399.926 1002 1186 1213];
Voltage = [21.316 42.633 56.843 85.265 99.476 142.109 170.53 198.952 227.374 284.217 284.217 397.904 -8702 65484 1305000];
plot (FiringAngle,Voltage)
xlabel('FiringAngle(°)....');
ylabel('Voltage(V).....');
hold on
plot (Voltage,FiringAngle,'r*');
dim = [0.82,0.8,0.1,0.1]; 
str = {'Suchitran Das','34201619005'}; 
annotation ('textbox' , dim , 'String' , str, 'FitBoxToText' , 'on');
grid on;
grid minor;
