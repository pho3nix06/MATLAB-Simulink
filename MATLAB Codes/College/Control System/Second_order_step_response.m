clc;
close all;
clear all;


wn= input('frequency')
zeta= input('damping factor')
k= input('constant')
num= [k*wn^2]
deno= [1 2*zeta*wn wn^2]
g= tf(num, deno)
t= feedback(g,1)
step(t, 'r')