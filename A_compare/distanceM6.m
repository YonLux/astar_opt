function dist = distanceM6(x1,y1,x2,y2)
%This function calculates the distance between any two cartesian 
%coordinates.
%此函数计算任意两个笛卡尔坐标之间的欧几里得距离。
%   Copyright 2009-2010 The MathWorks, Inc.
%dist=sqrt((x1-x2)^2 + (y1-y2)^2);%%%  欧式距离
%dist=sqrt((3*x1-3*x2)^2 + (3*y1-3*y2)^2); %%%欧式距离X轴，Y轴加权

%dist=abs(x1-x2) + abs(y1-y2);
%dist=0.5*abs(x1-x2)+2*abs(y1-y2);
dist=2*abs(x1-x2)+0.5*abs(y1-y2);
%dist=sqrt((x1-x2)^2 + (y1-y2)^2);