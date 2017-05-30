function root = forwardquad(a,b,c,x0,tol,maxk)
% r = backwardsquad(a,b,c,x0,tol,maxk) approximates the root of a function
% using the forwards and backwards iteration of a quadratic polynomial.
% Following from the well known 
% ax^2 + bx + c = Eqn(1)
% we know r = [-b (+ or -) sqrt(b^2 - 4ac)]/2 Eqn(2)
% we appoximate the roots by taking Eqn(1) and diving through by x,
% resulting in
% ax + b + c/x = 0
% rearrange to get 
% x_(k+1) = -(b/a)-c/(a*x_k), k = 1,2,3,... for Forwards Iteration
% x_(k+1) = -c/(b+a*x_k)    , k = 1,2,3,... for Backwards Iteration
%
% inputs
% ------
% a,b,c: points satisfying b > a > c and x != 0
% x0: An arbitrary initial condition
% tol: tolerance for approximate root
% maxk: sets a maximum number of iterations
%
% outputs
% -------
% root: approximate root of objective quadratic function
% See example script for more info

if nargin < 6
    maxk = 1000;
end
tic;
k=0;
root = forwardsr(a,b,c,x0,tol,k,maxk);
end
function root = forwardsr(a,b,c,x0,tol,k,maxk)

k = k + 1;

if k == 1
    x1 = x0;
    x2 = 0;
else
    x1 = x0;
    x2 = (-b/a) - c /(a*x0);
end

if k >= maxk
    t = toc;
    fprintf('Failed at %g iterations (%.03f s).\n',k,t) 
    return
elseif abs(x2-x1) < tol
    t = toc;
    root = x2;
    fprintf('Completed in %g iterations (%.03f s).\n',k,t)
    return
else
    root = forwardsr(a,b,c,x2,tol,k,maxk);
end

end