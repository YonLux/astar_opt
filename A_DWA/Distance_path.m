function S=Distance_path(Plan_path)
%%%% �� ȫ�־�̬�滮�� ·������ 
S=0;
 j = size(Plan_path,1) ;
 for i=1:1:(j-1)  
     Dist=sqrt( ( Plan_path(i,1) - Plan_path(i+1,1) )^2 + ( Plan_path(i,2) - Plan_path(i+1,2))^2);
     S=S+Dist;
 end
 