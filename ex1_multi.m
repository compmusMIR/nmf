%% Load Data
data = load('ex1data1.txt');

% Train theta based on data. Data have to be normalized, so mu and sigma is needed to predict new data.
[theta mu sigma] = train(data);

% Show theta found
theta

% Estimate the price of data on test base, using theta.
test = load('test.txt');
pred = (test-mu)./sigma;
pred = [ones(length(test(:,1)),1) pred];
price = pred*theta; 

% Show predicted price
price
