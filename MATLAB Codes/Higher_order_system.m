% % Define a 100th order system using polynomials
% 
% % Define the numerator polynomial
% numerator = 1; % Initialize the numerator polynomial
% for i = 1:50 % Loop from 1 to 50 (half of the order)
%     numerator = conv(numerator, [1 -i]); % Multiply the current polynomial by (s-i)
%     numerator = conv(numerator, [1 -i-50]); % Multiply the current polynomial by (s-i-50)
% end
% 
% % Define the denominator polynomial
% denominator = 1; % Initialize the denominator polynomial
% for i = 1:100 % Loop from 1 to 100 (full order)
%     denominator = conv(denominator, [1 -i]); % Multiply the current polynomial by (s-i)
% end
% 
% % Define the transfer function
% sys = tf(numerator, denominator);
% 
% % Print the transfer function
% disp('Transfer function:');
% disp(sys);
% rlocus(sys)







% Define the transfer function
s = tf('s');
k = input('Enter the value of k: ');
% b = input('Enter the value of b: ');
% a = input('Enter the value of a: ');
G = k*(s+1)/(s^2*(s + 9));

% Plot the root locus
rlocus(G);
title(['Root Locus for G(s) = ' num2str(k) '/(s+1)^100']);
