% Rename the script file to RH_Table_formation.m
% Then define the function RH_Table inside the script file
function RH_Table_formation(p)
% Compute the Routh-Hurwitz table for the given polynomial coefficients

% Get the degree of the polynomial
n = length(p) - 1;

% Create the Routh table
r = zeros(n+1, ceil((n+1)/2));

% Initialize the first two rows of the Routh table
r(1,:) = p(1:2:end);
r(2,:) = p(2:2:end);
if all(r(2,:) == 0)
    % Use a small positive number to avoid division by zero
    r(2,:) = eps;
end

% Compute the remaining rows of the Routh table
for i = 3:n+1
    % Compute the current row of the Routh table
    for j = 1:length(r(i-1,:))-1
        if r(i-1,1) == 0
            % Use a small positive number to avoid division by zero
            r(i-1,1) = eps;
        end
        r(i,j) = ((r(i-1,1) * r(i-2,j+1)) - (r(i-2,1) * r(i-1,j+1))) / r(i-1,1);
    end
    
    % Handle the case where the current row is all zeros
    if all(r(i,:) == 0)
        % Use a small positive number to avoid division by zero
        r(i,:) = eps;
    end
end

% Check for poles in the right-half plane
if any(sign(r(:,1)) ~= sign(r(1,1)))
    fprintf('The system is unstable.\n');
else
    fprintf('The system is stable.\n');
end

% Display the Routh table
disp(r);
end
