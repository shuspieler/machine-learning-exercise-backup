function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
	Temp1 = 0;
	Temp2 = 0;
	h = X * theta;
	
	for i = 1:m
		Temp1 = Temp1 + ((h(i)-y(i)));
	end
	for i = 1:m
		Temp2 = Temp2 + ((h(i)-y(i)))*X(i,2);
	end

	theta0 = theta(1,1) - (alpha/m)*Temp1;
	theta1 = theta(2,1) - (alpha/m)*Temp2;
	theta = [theta0;theta1];

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
