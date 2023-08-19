% Line Data for Y-Bus Formation.


function linedata = linedata5()     % Returns linedata.

%         |  From |  To   |   R   |   X   |   B/2 |
%         |  Bus  | Bus   |       |       |       |
linedata = [ 1      2       0.042   0.168     0.041;
             1      5       0.031   0.126     0.031;
             2      3       0.031   0.126     0.031;
             3      4       0.024   0.136     0.082;
             3      5       0.053   0.210     0.051;
             4      5       0.063   0.252     0.061];