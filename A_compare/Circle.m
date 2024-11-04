function newopt=Circle(OPT)   
%%%%%%%%%  将A*算法计算好的路径节点进行优化  %%%%%%%%
newopt=[];   
Num=size(OPT,1);
 t=1;
newopt(t,1)=OPT(Num,1);
newopt(t,2)=OPT(Num,2);
 
for i=Num:-1:1
   if i-2>0
    x1=OPT(i,1);
    y1=OPT(i,2);
    x2=OPT(i-1,1);
    y2=OPT(i-1,2);
    x3=OPT(i-2,1);
    y3=OPT(i-2,2);
    ax=x2-x1;  ay=y2-y1;
    bx=x3-x2; by=y3-y2;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%  判断两个向量的夹角，和方向  %%%%  
    angle_a=Angle(ax,ay);
    angle_b=Angle(bx,by);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%  将折线进行圆弧化           %%%%
    see=Revo(angle_a,angle_b,x1,y1,x2,y2,x3,y3);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     j=size(see,1);
     for k=1:1:j
         t=t+1;
         newopt(t,1)=see(k,1);
         newopt(t,2)=see(k,2);
     end  
   end
   %%%%%末尾3个元素，
 end  
 
 t=t+1;
 newopt(t,1)= OPT(1,1);
 newopt(t,2)= OPT(1,2);
