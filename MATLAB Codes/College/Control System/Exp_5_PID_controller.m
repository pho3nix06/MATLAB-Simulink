clc;
clear all;
close all;

n = [1];
d = [2 5 1];
g = tf(n,d)
% int = tf ([100],[1 0]);
% intpath = parallel (100,int);
% diff = tf([5 0],[1]);
% diffpath = parallel(intpath,diff);
% finalpath = series(100,g);
% c = feedback (finalpath,1,-1)
step(g)


