Speed = [1474 1454 1388 1363 1352 1334 1300 1278 1250];
Current = [2.6 2.9 4.8 5.5 6.1 6.4 6.9 7.5 8];
plot (Speed,Current)
xlabel('Speed')
ylabel('Current')
hold on
plot (Speed,Current,'r*')
grid on
grid minor