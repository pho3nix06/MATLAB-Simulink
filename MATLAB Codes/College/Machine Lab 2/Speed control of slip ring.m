clc;
clear all;
close all;

x = 0: 100:1500;
y = tan(sin(x))-sin(tan(x));
z= 2*cos(x);

plot(x,y,'ko-')
hold on
plot(x,z)
xlabel('X')
ylabel('y')
title('x-y plot')
