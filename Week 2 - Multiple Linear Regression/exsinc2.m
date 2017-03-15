sinc
plot (X,y,'-')
plot (X,y,'*')
close all
plot (X,y,'*')
data=[X y];

%X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples

% Plot Data
% Note: You have to complete the code in plotData.m
%plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =================== Part 3: Gradient descent ===================
fprintf('Running Polyfit ...\n')
a = polyfit(X, y, 6)
y0 = polyval(a, X)


% Plot the linear fit
hold on; % keep previous plot visible
plot(X(:,1), y0, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure
