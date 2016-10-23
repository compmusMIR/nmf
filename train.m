function [theta, mu, sigma] = train(data)
  end_data = length(data(1,:));
  X = data(:, 1:end_data-1);
  y = data(:, end_data);
  m = length(y);

  % Normalizing data...
  X_norm = X;
  mu = zeros(1, size(X, 2));
  sigma = zeros(1, size(X, 2));
  mu = mean(X);
  sigma = std(X);
  X_norm = (X-mu)./sigma;
  X = X_norm;

  alpha = 0.01;
  num_iters = 1500;
  X = [ones(m, 1) X];
  theta = zeros(end_data, 1);
  for iter = 1:num_iters
    h = X*theta;
    theta = theta - (alpha/m * ((h-y)'*X))';
  end
end
