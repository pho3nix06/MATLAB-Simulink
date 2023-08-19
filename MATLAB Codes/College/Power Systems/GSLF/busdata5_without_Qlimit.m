% Bus data for Load Flow Analysis.


function busdata = busdata5_without_Qlimit()     % Returns busdata.

%         |Bus | Type | Vsp | theta | PGi | QGi | PLi | QLi | Qmin | Qmax |
busdata = [ 1     1    1.0      0     0.0    0    0      0      0      0;
            2     2    1.0      0     0.5    0    0      0    -5.0   5.0;
            3     2    1.0      0     1.0    0    0      0    -5.0   5.0;
            4     3    1.0      0     0.0    0    1.15   0.6     0     0;
            5     3    1.0      0     0.0    0    0.85   0.4     0     0 ];