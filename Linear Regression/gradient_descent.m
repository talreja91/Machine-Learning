function [theta, J_history] = gradient_descent(X, y, theta, alpha, lambda, num_iterations)
   
    m = size(X, 1);
    J_history = zeros(num_iterations, 1);

    for iteration = 1:num_iterations
        theta = gradient_step(X, y, theta, alpha, lambda);
        J_history(iteration) = cost_function(X, y, theta, lambda);
    end
end