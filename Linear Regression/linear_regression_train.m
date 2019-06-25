function [theta mu sigma X_normalized J_history] = linear_regression_train(X, y, alpha, lambda, num_iterations)
    m = size(y, 1);
    n = size(X, 2);
    [X_normalized mu sigma] = feature_normalize(X);
    X_normalized = [ones(m, 1), X_normalized];
    initial_theta = zeros(n + 1, 1);
    [theta, J_history] = gradient_descent(X_normalized, y, initial_theta, alpha, lambda, num_iterations);
end