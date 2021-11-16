function dist = distance(x1,y1,x2,y2)
%This function calculates the distance between any two cartesian 
%coordinates.
%   Copyright 2009-2010 The MathWorks, Inc.
dp = [x1 - x2, y1 - y2];
if 0
    dist = norm(dp, 2);
else
    dist = norm(dp, 1);
end
