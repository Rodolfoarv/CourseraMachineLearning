function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%First Solution Cost Function
%hOfX = sigmoid(X * theta);
%J = ((1.0 / m) * (-y' * log(hOfX) - (1 - y)'*log(1-hOfX))) + + (lambda/(2*m))*sum(theta(2:length(theta)) .* theta(2:length(theta))) ;

%Second Solution Cost Function

[J, grad] = costFunction(theta, X, y)
newThetaParameters = [0; theta(2:length(theta))];
J = J + lambda / (2*m) * sum(newThetaParameters .^ 2);

%Calculating gradient descent
grad(:,2:length(grad)) = grad(:,2:length(grad)) + (lambda/m)*theta(2:length(theta))';


% =============================================================

end
