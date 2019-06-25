function [theta] = gradient_step(X, y, theta, alpha, lambda)
    m = size(X, 1);
    predictions = hypothesis(X, theta);
    difference = predictions - y;
    regularization_param = 1 - alpha * lambda / m;
    theta = theta * regularization_param - alpha * (1 / m) * (difference' * X)';
    theta(1) = theta(1) - alpha * (1 / m) * (X(:, 1)' * difference)';
end