
clear all; close all; clc
%trainfunction();
data = load('corrdata.txt');
X = data(:,[1,2,3,4]);
y = data(:,5);
%initial_theta = randn(size(X, 2), 1);
initial_theta = ones(size(X, 2), 1);
theta = initial_theta;


% Set regularization parameter lambda to 1
lambda = 0;
alpha = 0.15;

% Compute and display initial cost and gradient for regularized logistic
% regression
%for i=1:100000
  %  [cost, grad] = costFunctionReg(theta, X, y, lambda);
    
   % theta(1)=theta(1)-alpha*grad(1);
   % theta(2)=theta(2)-alpha*grad(2);
    %theta(3)=theta(3)-alpha*grad(3);
    %theta(4)=theta(4)-alpha*grad(4);
    
    
    
%end


% Set Options
%options = optimset('GradObj', 'on', 'MaxIter', 400);

% Optimize
%[theta, J, exit_flag] = ...
 %   fminunc(@(t)(costFunctionReg(t, X, y, lambda)), initial_theta, options);
 
 theta = (inv(X'*X))*X'*y;

p = predict(theta, X);

fprintf('Train Accuracy: %f\n', mean(double(p == y)) * 100);