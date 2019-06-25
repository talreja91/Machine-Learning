function [theta] = normal_equation(X, y)
    theta = pinv(X' * X) * X' * y;
end