clc;
clear all;
close all;

%q1a
num = [10];
den = conv(conv([1 0],[0.2 5]),[0.05 1]);
g = tf(num,den)
bode(g)
[Gm,Pm,Wg,Wp] = margin(g)
margin(g)

%q1b
% num = [200 400];
% den = conv(conv([1 0],[1 8 20]),[1 4]);
% g = tf(num,den)
% bode(g)
% [Gm,Pm,Wg,Wp] = margin(g)
% margin(g)

%q2
% num = [11 22];
% den = [1 3 0 10];
% g = tf(num,den)
% nyquist(g)
% [Gm,Pm] = margin(g)
% Gm_dB = 20 * log10(Gm)

%q3
% num = [10];
% den = [1 6 10];
% g = tf(num,den);
% syms s;
% U = 1/s;
% R = 1/s^2;
% P = 1/s^3;
% GH = 10/(s^2+6*s+10);
% Kp = limit(GH,s,0)
% Kv = limit(s*GH,s,0)
% Ka = limit(s^2*GH,s,0)
% 
% Eu = U/(1+GH);
% Eu1 = s^2*Eu;
% ess_unitstep = limit(Eu1,s,0)
% 
% Er = R/(1+GH);
% Er1 = s*Er;
% ess_unitramp = limit(Er1,s,0)
% 
% Ep = P/(1+GH);
% Ep1 = s^2*Ep;
% ess_unitparabolic = limit(Ep1,s,0) 

%q4
% n = [1];
% d = [1 4 6 4 0];
% g = tf(n,d)
% rlocus(g)

%q5a
% num = [1];
% den = [1 3 2 0];
% g = tf(num,den)
% rlocus(g)

%q5b
% n = conv([1 1],[1 2]);
% d = conv([1 -1],[1 0.1]);
% g = tf(n,d)
% rlocus(g)