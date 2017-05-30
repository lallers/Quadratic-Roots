 clc
 clear all
 close all
% %---------Problem #1a--------------
% a = 0;%
% b = 2;%
% vol_box = 100;
% tol = 10e-10;
% f_box = @(x) x.^3-26.*x.^2+160.*x-vol_box;%
% z = bisectEx(f_box,a,b,tol);
%/////////////////////////////////

%---------Problem #1b--------------
% %f_sphere = @(x) 
% r = 15; %cm^3
% r_3 = r^3
% roe = .750; %g/cm^3 
% roe_water = 1; %g/cm^3 
% vol_sphere = (4.*pi.*r.^3)./3; %cm^3
% volsub_sphere =(roe/roe_water)*vol_sphere; %Volume submerged = density of sphere / density of water * total volume of sphere 
% r_sub = (volsub_sphere*(3/(4*pi)))^(1/3);
% vols_real = 3375*pi
% volsub_sphere = @(r) -r^3+3*r^2-3357*pi;
% a1 = -21;
% b1 = 22;
% r_2 = abs(bisectEx(volsub_sphere,a1,b1,tol));
% 
% v2 =@(rz) -rz^3/3 + rz^2-pi*r_3;
% a2 = -80;
% b2 = 1;
% bi2 = bisectEx(v2,a2,b2,tol)
%/////////////////////////////////

%---------Problem #2a--------------
%(A) c = ([(a,f(a)),(b,f(b))],0)
%(B) If there is a root near the concave portion of the function, then one
%enpoint will become the fixed endpoint and your solution may not approach
%0 since it will no longer use the other endpoint.
%(C)
% objfnc =@(x) x*sin(x)-1;
% objfnc_a = 0;
% objfnc_b = 2;
% tol = 10e-15;
% [root_bisect,root_biErr] = bisectEx(objfnc,objfnc_a,objfnc_b,tol);
% [root_rf,root_rfErr] = regula(objfnc,objfnc_a,objfnc_b,tol);
%/////////////////////////////////

% %---------Problem #3--------------
% a3 = 1;
% b3 = -1;
% c3 = -1;
% x0f = 1;
% x0b = -1;
% 
% tol3 = .5*10e-15;
% [root_fquad,Ifor] = forwardquad(a3,b3,c3,x0f,tol3);
% [root_bquad,Ibac] = backwardquad(a3,b3,c3,x0b,tol3);
% fprintf('Root: %.2f\n',root_fquad,root_bquad)
% ErrFcheck = Ifor < tol3;
% ErrBcheck = Ibac < tol3;
% 
% if ErrFcheck == 1 && ErrBcheck == 1
%     disp('Win')
% else
%     disp('LOSE, Maybe try picking better numbers.')
% end
%(d) It is not possible to find another number to get the opposite root.
%Since forward iteration gets a value from 0 to inifinty of the positive
%numbers and backwards gets a value for all the negative numbers from 0 to
%-infinity.
%/////////////////////////////////


%---------Problem #4--------------
%(1)
g=@(x) 1-sin(x); 
x0 = .25; 
a = 0;
b = 1;
kmax = 200;
[spiderman1] = cobweb(g,a,b,x0,kmax);

%(2)
g=@(x) 1-x^2; 
x0 = .5; 
a = 0;
b = 1;
kmax = 25;
[spiderman2] = cobweb(g,a,b,x0,kmax);
%/////////////////////////////////

%---------Problem #5--------------
% xo_cob5 = .6;
% a_cob5 = 0;
% b_cob5 = 1;
% kmax = 100;
% for r_cob5 = [2.8,3.0,3.4,3.5,3.6]; 
% g_cob5 =@(x) r_cob5*x*(1-x);
% [spiderman5,ymax5,xmax5] = cobweb(g_cob5,a_cob5,b_cob5,x0_cob5,kmax5);