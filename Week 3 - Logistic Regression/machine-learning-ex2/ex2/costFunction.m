function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
grad_aux = grad;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

sig = sigmoid(X * theta);

%fprintf('TAMANHO %f \n', size(sig));

J = sum(-y' * log(sig) - (1 - y') * log(1 - sig)) / m;


for i = 1:length(grad);     
  grad_aux(i)  = grad(i);
  grad_aux(i)  = grad_aux(i) - sum(( sig  - y )' * X(:,i) ) / m;  
  grad(i)      = grad_aux(i)*-1;     

% grad = (1 / m) * (h_theta - y)' * X;    GITHUB
% =============================================================

end
