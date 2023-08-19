clc;
clear all;
close all;

% q1
% dia = (21*10^-3);
% r = (dia/2);
% Dab = 3;
% Dbc = 6;
% Dac = 3.6;
% f = 50;
% r1 = (0.7788*r);
% Deq = (Dab * Dbc *Dac)^(1/3);
% L = (2 * 10^-7) * log(Deq /r1)
% L1 = L * 10^-3
% XL = (2 * pi * f *L)
% XL1 = XL * 10^-3

% q2
% dia = (2*10^-3);
% r = (dia/2);
% D = 3;
% f = 50;
% CN = ((2*pi*8.85*10^-12)/log(D/10))
% CN1 = CN * 10^3
% XC = 1 / (2 * pi * f * CN)
% XC1 = XC * 10^3
% BC = 1/XC

%q3
dia = (21*10^-3);
r = (dia/2);
Dab = 3;
Dbc = 5;
Dac = 3.6;
f = 50;
r1 = (0.7788*r);
Deq = (Dab * Dbc *Dac)^(1/3);
CN = ((2*pi*8.85*10^-12)/log(Deq/r))
CN1 = CN * 10^3
VL = 132 * 10^3
VN = (VL/sqrt(3))
XC = 1 / (2 * pi * f * CN)
IC = VN /XC
VAR = VL^2/XC
