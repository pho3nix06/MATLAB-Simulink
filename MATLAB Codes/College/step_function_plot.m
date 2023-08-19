% Define the step functions
step1 = [zeros(1,10) ones(1,10) zeros(1,10)];
step2 = [zeros(1,20) ones(1,10) zeros(1,10)];

% Plot the step functions
subplot(2,1,1);
stem(step1);
title('Step Function 1');
xlabel('n');
ylabel('Amplitude');

subplot(2,1,2);
stem(step2);
title('Step Function 2');
xlabel('n');
ylabel('Amplitude');
