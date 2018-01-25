function p = predict(theta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters. 
%               You should set p to a vector of 0's and 1's
%

%使用logistic regression�? h（theta）代表输出是1的概率�?�也就是说，在本例程
%中，输出该学生可以�?�过的可能�?��?�使用round四舍五入，大�?0.5猜�?�过�?
p = round(sigmoid(X*theta));


% =========================================================================


end
