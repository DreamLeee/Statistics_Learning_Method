clear all; close all;

data = [3 3 1; 4 3 1; 1 1 -1];

[w,b] = perceptron(data);
fprintf('w: %d\n',w);
fprintf('b: %d\n',b)
