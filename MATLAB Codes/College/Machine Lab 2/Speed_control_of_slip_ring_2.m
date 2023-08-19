Speed = [1474 1454 1388 1363 1352 1334 1300 1278 1250];
Resistance = [2.6 2.9 4.8 5.5 6.1 6.4 6.9 7.5 8];
plot (Speed,Resistance)
xlabel('Speed(RPM).....')
ylabel('Resistance(Ohm)....')
hold on
plot (Speed,Resistance,'r*')
dim = [0.82,0.8,0.1,0.1]; 
str = {'Suchitran Das','34201619005'}; 
annotation ('textbox' , dim , 'String' , str, 'FitBoxToText' , 'on')
grid on
grid minor