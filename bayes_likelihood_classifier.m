function y = bayes_likelihood_classifier(X,Y,x)
% input:  X  - the distribution of samples
%         Y  - the class of X
%         x  - to be classified
% output: y  - the class of x

% Meng Li: menglee1218@gmail.com;

% compute prior probability
P = length(find(Y==1))/length(Y);
N = length(find(Y==-1))/length(Y);

% compute conditional probability
p_x1 = length(find(X(:,1)==x(1)&Y==1))/length(find(Y==1));
p_x2 = length(find(X(:,2)==x(2)&Y==1))/length(find(Y==1));
n_x1 = length(find(X(:,1)==x(1)&Y==-1))/length(find(Y==-1));
n_x2 = length(find(X(:,2)==x(2)&Y==-1))/length(find(Y==-1));

% compute posterior probability
p = P*p_x1*p_x2;
n = N*n_x1*n_x2;

% classify x
if p<n
    y = -1;
else
    y = 1;
end

end