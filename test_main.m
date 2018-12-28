clear all; close all;

%%
% data = [3 3 1; 4 3 1; 1 1 -1];
% 
% [w,b] = perceptron(data);
% fprintf('w: %d\n',w);
% fprintf('b: %d\n',b)
%%

X = [1 1;1 2;1 2;1 1;1 1;2 1;2 2;2 2;2 3;2 3;3 3;3 2;3 2;3 3;3 3];
Y = [-1;-1;1;1;-1;-1;-1;1;1;1;1;1;1;1;-1];
x = [2 1];
y = bayes_classifier(X,Y,x,0);
