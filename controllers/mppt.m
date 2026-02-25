function D = mppt(V,I)

persistent oldV oldP oldD;

if isempty(oldV)
    oldV = 0;
    oldP = 0;
    oldD = 0.5;
end

deltaD = 0.00005;
Dmax = 0.9;
Dmin = 0.1;

newD = oldD;
newP = V*I;
delP = newP - oldP;
delV = V - oldV;

if abs(delP) > 1
    if delP > 0
        if delV > 0
            newD = oldD - deltaD;
        else
            newD = oldD + deltaD;
        end
    elseif delP < 0
        if delV > 0
            newD = oldD + deltaD;
        else
            newD = oldD - deltaD;
        end
    end
end

newD = max(min(newD, Dmax), Dmin);

oldV = V;
oldP = newP;
oldD = newD;

D = newD;
