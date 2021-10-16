function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

h = X*theta; % hypothesis function
% You need to return the following variables correctly 
J = (h-y)'*(h-y)/(2*m)+lambda*(theta'*theta)/(2*m);
J = J-lambda*theta(1)*theta(1)/(2*m); % don't regularized theta0 term
grad = zeros(size(theta));

grad = X'*(h-y)/m+lambda*theta/m;
grad(1) = grad(1)-lambda*theta(1)/m;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
