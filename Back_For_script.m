%---------Backwards Iteration Method--------------
clc;clear all

a = 1; b = -1; c = -1;
x0 = [1 -1]; 
tol = .5e-10;

fprintf('Backwards\n')
root_back = backwardquad(a,b,c,x0(1),tol,1000);
fprintf('Forwards\n')
root_for = forwardquad(a,b,c,x0(2),tol,1000);