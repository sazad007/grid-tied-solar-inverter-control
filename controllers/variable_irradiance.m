function [irr,temp,p] = fcn(t)

temp = 25;
if t <= 1
    irr = 1000;
    p = 11210;
elseif t >1 && t <= 2
    irr = 800;
    p = 9017;
elseif t >2 && t <= 3
    irr = 500;
    p = 5644;
elseif t >3 && t <= 4
    irr = 700;
    p = 7903;
else
    irr = 1500;
    p = 16455;
end