function [W,B] = perceptron(data)

% sign(x)  = w*x + b; (1)f(x)= 1 if x>=0 ; (2)f(x)=-1 if x<0
% loss = -1*sum(y_i*(w_i*x_i+b))  i = 1:m    |wx+b|/w is the distance
% between the point to hyperplane S
% the solve algorithm: stochastic gradient descend

% input: data - (X,Y)
% output: weight - w/b

% Meng Li: menglee1218@gmail.com;

% Initializa
m = size(data,1);
n = size(data,2);
w = zeros(m-1,1);
b = 0;
X = data(:,1:end-1);
Y = data(:,end); 
alpha = 1;      % learning rate/ step size
max_iteration = 10000;

for i = 1:max_iteration
    % stochastic point
    idx = randperm(m,1);
    y = Y(idx);
    x = X(idx,1:end);
    
    loss_idx = y*(x*w+b);
        
    % update w/b
    if loss_idx <= 0
        w = w + alpha*y*x';
        b = b + alpha*y;
    end
    
    % find the misclassifation
    S = Y.*(X*w + b);
    idx_data = find(S<=0); %#ok<EFIND>
    
    if isempty(idx_data)
        W = w;
        B = b;
        break;
    end
        
end

W = w;
B = b;
    
end