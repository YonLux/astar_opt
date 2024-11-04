function  Wu=Angle05(x,y)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ↑为1，→为2，↓为3，←为4；↗为5，↘为6，↙为7，↖为8    %%%
%%%       两向量夹角为0°，45°，-45°，90°，-90°          %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m=[x y];  
n=[0 1]; 
i=1;
 
c=dot(n,m)/norm(n,2)/norm(m,2);%%%求cos值
angle =rad2deg(i*acos(c)) ; %%%求角度

if x>=0
    an=angle;
else
    an=360-angle;
end

if an>=292.5 && an<337.5
    z=8;Wu=[1 -1;1 0;0 -1];    
elseif an>=22.5 && an<67.5
    z=2;Wu=[-1 -1;0 -1;-1 0];
elseif an>=67.5 && an<112.5
    z=3;Wu=[-1 -1;-1 1;-1 0];
elseif an>=112.5 && an<157.5
    z=4;Wu=[0 1;-1 1;-1 0];
elseif an>=157.5  && an<202.5
     z=5;Wu=[0 1;-1 1;1 1];
elseif an>=202.5  && an<247.5
     z=6; Wu=[0 1;1 0;1 1]; 
elseif an>=247.5  && an<292.5
     z=7; Wu=[1 -1;1 0;1 1];
else
     z=1;Wu=[-1 -1;0 -1;1 -1];
end

    %angle=angle_a*pi/180;%%%求弧度
   