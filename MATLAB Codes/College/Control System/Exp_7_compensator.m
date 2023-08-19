clc;
clear all;
close all;

%q1
% n = [30];
% d = conv(conv([1 0],[0.25,1]),[0.0125 1]);
% g = tf(n,d);
% g_un = feedback(g,1,-1);
% n = conv([6.3],[2.13 1]);
% d = [13.419 1];
% g_c = tf(n,d);
% g1 = series(g,g_c);
% g_comp = feedback(g1,1,-1)
% 
% figure(1);
% step(g_un,'r')
% hold on;
% step(g_comp,'g')
% legend('Without compensator','With compensator')
% 
% figure(2);
% bode(g,'r');
% [Gm_un,Pm_un,Wgm_un,Wpm_un] = margin(g)
% hold on;
% 
% legend('Without compensator','With compensator')
% bode(g1,'g')
% [Gm_comp,Pm_comp,Wgm_comp,Wpm_comp] = margin(g)
% legend('Without compensator','With compensator')



%q2
n = [150];
d = conv([1 0],[1 8]);
g = tf(n,d)
g_un = feedback(g,1,-1)
n = [1 9.1];
d = [1 16.25];
g_c = tf(n,d)
g1 = series(g_c,g)
g_comp = feedback(g1,1,-1)
figure(1)
step(g_un,'r')
hold on;
step(g_comp,'g')
legend('Without compensator','With compensator')

figure(2)
bode(g,'r')
[Gm_un,Pm_un,Wgm_un,Wpm_un] = margin(g)
hold on;
bode(g1,'g')
[Gm_comp,Pm_comp,Wgm_comp,Wpm_comp] = margin(g1)
legend('Without compensator','With compensator')