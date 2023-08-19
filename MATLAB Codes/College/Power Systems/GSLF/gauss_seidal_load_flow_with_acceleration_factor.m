% Program for Gauss - Seidel Load Flow Analysis

% Assumption, Bus 1 is considered as Slack bus.

ybus = ybus_cal();           % Calling program "ybusppg.m" to get Y-Bus. 
busdata = busdata5_with_Qlimit();       % Calling "busdata6.m" for bus data.
acc=input('Enter the acceleration constant: ');
bus = busdata(:,1);         % Bus number.
type = busdata(:,2);        % Type of Bus 1-Slack, 2-PV, 3-PQ.
V = busdata(:,3);           % Initial Bus Voltages.
th = busdata(:,4);          % Initial Bus Voltage Angles.
GenMW = busdata(:,5);       % PGi, Real Power injected into the buses.
GenMVAR = busdata(:,6);     % QGi, Reactive Power injected into the buses.
LoadMW = busdata(:,7);      % PLi, Real Power Drawn from the buses.
LoadMVAR = busdata(:,8);    % QLi, Reactive Power Drawn from the buses.
Qmin = busdata(:,9);        % Minimum Reactive Power Limit
Qmax = busdata(:,10);       % Maximum Reactive Power Limit
nbus = max(bus);            % To get no. of buses
P = GenMW - LoadMW;         % Pi = PGi - PLi, Real Power at the buses.
Q = GenMVAR - LoadMVAR;     % Qi = QGi - QLi, Reactive Power at the buses.
Vprev = V;
toler = 1;                  % Tolerence.
tol = NaN(100,1);
iteration = 1;              % iteration starting
iter = NaN(100,1);
while (toler > 1e-12)     % Start of while loop
    for i = 2:nbus
        sumyv = 0;
        for k = 1:nbus
            if i ~= k
                sumyv = sumyv + ybus(i,k)* V(k);  % Vk * Yik
            end
        end
        if type(i) == 2     % Computing Qi for PV bus
            Q(i) = -imag(conj(V(i))*(sumyv + ybus(i,i)*V(i)));
            if (Q(i) > Qmax(i)) || (Q(i) < Qmin(i))  % Checking for Qi Violation.
                if Q(i) < Qmin(i)   % Whether violated the lower limit.
                    Q(i) = Qmin(i);
                else    % No, violated the upper limit.
                    Q(i) = Qmax(i);
                end
                type(i) = 3;  % If Violated, change PV bus to PQ bus.
            end
        end
        V(i) = (1/ybus(i,i))*((P(i)-j*Q(i))/conj(V(i)) - sumyv); % Compute Bus Voltages Magnitude and Angle from bus 2 to n 
        if type(i) == 2 % For PV Buses, Voltage Magnitude remains same, but Angle changes.
            V(i) = pol2rect(abs(Vprev(i)), angle(V(i)));
        end
    end
    
    toler = max(abs(abs(V) - abs(Vprev)));     % Calculate tolerance.
    tol(iteration,1)=toler;
    iter(iteration,1)=iteration;
    iteration = iteration + 1;      % Increment iteration count.
    V=Vprev+acc*(V-Vprev);
    Vprev = V; % Vprev is required for next iteration,  V(i) = pol2rect(abs(Vprev(i)), angle(V(i)));
    
end     % End of while loop / Iteration

iteration       % Total iterations.
V;               % Bus Voltages in Complex form.
Vmag = abs(V);   % Final Bus Voltages.
Ang = 180/pi*angle(V);    % Final Bus Voltage Angles in Degree.
for i = 1:nbus
        sumyv = 0;
        for k = 1:nbus
            if i ~= k
                sumyv = sumyv + ybus(i,k)* V(k);  % Vk * Yik
            end
        end
        Q(i) = -imag(conj(V(i))*(sumyv + ybus(i,i)*V(i)));
        P(i) = real(conj(V(i))*(sumyv + ybus(i,i)*V(i)));
end
P;
Q;
plot(iter,tol,'k--o')
xlabel('ITERATION COUNT')
ylabel('MAXIMUM ERROR')
final_load_flow_results_using_gslf=table(bus,type,Vmag,Ang,P,Q)
