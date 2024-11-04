function dist = distanceM9(x1,y1,x2,y2,xTarget,yTarget,xStart,yStart,OPEN)
 x_ts=abs(xTarget-xStart);
 y_ts=abs(yTarget-yStart);
%  areal_T=Areal(xTarget,yTarget);
%  areal_S=Areal(xStart,yStart);
%dist=sqrt((x1-x2)^2 + (y1-y2)^2);%%%  Å·Ê½¾àÀë
%dist=sqrt((3*x1-3*x2)^2 + (3*y1-3*y2)^2); %%%Å·Ê½¾àÀëXÖá£¬YÖá¼ÓÈ¨
 %if areal_T==areal_S
    
   du=direction(OPEN,x1,y1,x2,y2);
   if du==0
       dist=0.5;
   else
       dist=sqrt((x1-x2)^2 + (y1-y2)^2)+du/45;
   end
 %   dist=1*abs(x1-x2)+1*abs(y1-y2);
%    if x_ts>y_ts
%        dist=0.5*abs(x1-x2)+2*abs(y1-y2);
%     else
%        dist=2*abs(x1-x2)+0.5*abs(y1-y2);
%    end
 end