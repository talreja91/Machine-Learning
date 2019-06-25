function [X_normalized, mu, sigma] = feature_normalize(X)
    X_normalized = X;
    mu = zeros(1, size(X_normalized, 2));
    sigma = zeros(1, size(X_normalized, 2));

    % Get average values for each feature (column) in X.
    mu = mean(X_normalized);

    % Calculate the standard deviation for each feature.
    sigma = std(X_normalized);

    % Subtract mean values from each feature (column) of every example (row)
    % to make all features be spread around zero.
    X_normalized = X_normalized - mu;

    % Normalize each feature values for each example so that all features 
    % are close to [-1:1] boundaries.
    X_normalized = X_normalized ./ sigma;
end