clc;
clear all;
close all;

G1 = tf([1 0],[1 0 2]);
G2 = tf([1],[1 1]);
G3 = tf([1 0],[3 5]);
G4 = tf([1],[1 3]);
G5 = tf([1],[1 2]);
G6 = tf([3 5],[1 0]);

seriesConnectionOfFeedback = series(G5,G6);
parallellPathToSummerBlock1 = parallel(seriesConnectionOfFeedback,-1);
forwardPath1 = series(G1,parallellPathToSummerBlock1);
parallellPathToSummerBlock2 = parallel(forwardPath1,-(G4));
forwardPath2 = series(G2,parallellPathToSummerBlock2);
systemPath = series(forwardPath2,G3)