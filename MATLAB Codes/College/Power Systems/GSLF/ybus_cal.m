% Program to form Admittance And Impedance Bus Formation....

function ybus = ybus_cal() % Returns ybus

linedata = linedata5(); % Calling "linedata6.m" for Line Data...
fb = linedata(:,1);     % From bus number...
tb = linedata(:,2);     % To bus number...
r = linedata(:,3);      % Resistance, R...
x = linedata(:,4);      % Reactance, X...
b = linedata(:,5);      % Ground Admittance, B/2...
z = r + i*x;           % Z matrix...
y = 1./z;             % To get inverse of each element...
b = i*b;             % Make B imaginary...

nbus = max(max(fb),max(tb));  % no. of buses...
nbranch = length(fb);          % no. of branches...
ybus = zeros(nbus,nbus);        % Initialise YBus...
 
 % Formation of the Off Diagonal Elements...
 for k=1:nbranch
     ybus(fb(k),tb(k)) = -y(k);
     ybus(tb(k),fb(k)) = ybus(fb(k),tb(k));
 end
 
 % Formation of Diagonal Elements....
 for m=1:nbus
     for n=1:nbranch
         if fb(n) == m | tb(n) == m
             ybus(m,m) = ybus(m,m) + y(n) + b(n);
         end
     end
 end
 ybus;                  % Bus Admittance Matrix
 zbus = inv(ybus);      % Bus Impedance Matrix