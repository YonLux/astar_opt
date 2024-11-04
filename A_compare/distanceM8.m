function dist = distanceM8(x1,y1,x2,y2,xTarget,yTarget,xStart,yStart,OPEN)

%此函数计算任意两个笛卡尔坐标之间的欧几里得距离。
x_ts=abs(xTarget-xStart);
y_ts=abs(yTarget-yStart);
% areal_T=Areal(xTarget,yTarget);
% areal_S=Areal(xStart,yStart);
%dist=sqrt((x1-x2)^2 + (y1-y2)^2);%%%  欧式距离
%dist=sqrt((3*x1-3*x2)^2 + (3*y1-3*y2)^2); %%%欧式距离X轴，Y轴加权
% if areal_T==areal_S
%     dist=sqrt((x1-x2)^2 + (y1-y2)^2);
% else
   if x_ts>y_ts
      dist=0.5*abs(x1-x2)+2*abs(y1-y2);
   else
      dist=2*abs(x1-x2)+0.5*abs(y1-y2);
   end
% end
%dist=abs(x1-x2) + abs(y1-y2);
%dist=0.5*abs(x1-x2)+2*abs(y1-y2);

%dist=sqrt((x1-x2)^2 + (y1-y2)^2);