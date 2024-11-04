function lineOPEN=Line_zhong(Optimal_path,CLOSED,Num_obs,Num_Opt)

 n=Num_Opt;v=1;ji=0;
   while (n>1)
        ji=ji+1;
        n=n-1;
        parent_node=[Optimal_path(v,1),Optimal_path(v,2)];  %%% 当前点的坐标
        parentP_node=[Optimal_path(v,3),Optimal_path(v,4)]; %%% 当前点父节点的坐标
        index_p=v;
        index_pP=Optimal_index(Optimal_path,Optimal_path(v,3),Optimal_path(v,4));%%% 指向父节点的位置
        parentPP_node=[Optimal_path(index_pP,3),Optimal_path(index_pP,4)];  %%% 当前点的父节点的父节点坐标
        
       
        
       x_n1 = parentP_node(1,1) - parent_node(1,1) ;  %%向量1
       y_n1 = parentP_node(1,2) - parent_node(1,2) ;
       x_n2 = parentPP_node(1,1) - parentP_node(1,1) ;   %%向量2
       y_n2 = parentPP_node(1,2) - parentP_node(1,2) ;
        
        angle=myangle( x_n1,y_n1,x_n2,y_n2);  %%%判断两个向量的夹角
   
        if angle==0         %%%夹角为0，说明在一条直线上，修改父节点
            Optimal_path(v,3) = Optimal_path(index_pP,3);
            Optimal_path(v,4) = Optimal_path(index_pP,4);
        else             %%%%不为0，是转弯了，判断当前点和转弯之后的点之间有无障碍物
            x1 = parent_node(1,1);    y1 = parent_node(1,2);
            x2 = parentP_node(1,1);   y2 = parentP_node(1,2);
            x3 = parentPP_node(1,1);  y3 = parentPP_node(1,2);
            
             f=Inline(x1,y1,x3,y3,CLOSED,Num_obs)  ;
             if f==0      %%% 无障碍物 把当前点的父节点修改成转弯后的节点
                Optimal_path(v,3) = Optimal_path(index_pP,3);
                Optimal_path(v,4) = Optimal_path(index_pP,4);
             else        %%%% 有障碍物 则选择下一个当前点 
                 inh=index_pP-1;
                 v=index_pP;
                 S_node=sqrt((x1-x2)^2 + (y1-y2)^2)+sqrt((x3-x2)^2 + (y3-y2)^2);
                if inh>1
                    for t=inh:-1:index_p
                       if ( Optimal_path(t,1)~=x1 || Optimal_path(t,2)~=y1 )   %%%%判断转弯后的节点 与当前点和转弯节点中间的节点 之间有无障碍物
                            x_z = Optimal_path(t,1); 
                            y_z = Optimal_path(t,2);
                            f=Inline(x_z, y_z,x3,y3,CLOSED,Num_obs);
                          if f==0                                %%%% 存在中间节点到转弯后的节点之间无障碍物的点，则当前点选择该点，并将该节点修改成原当前点的父节点
                               S_node_z=sqrt((x1-x_z)^2 + (y1-y_z)^2)+sqrt((x3-x_z)^2 + (y3-y_z)^2);
                              if S_node_z<S_node
                                 v=t;
                                 Optimal_path(index_p,3) = Optimal_path(t,1);
                                 Optimal_path(index_p,4) = Optimal_path(t,2);
                              end
                          end    
                       end
                    end
                end
             end
        end
   end
    lineOPEN =  Optimal_path;
%              if f==1
%                  ifi=1;
%                 
%                 
%                     for j= (index_pP-1):-1:(index_p+1)
%                    
%                     x1 = Optimal_path(j,1);y1=Optimal_path(j,2);
%                     fi= Inline(x1,y1,x3,y3,CLOSED,Num_obs) ;
%                     if fi==0
%                         vi=j;
%                         ifi=0;
%                     end
%                     end
%                     
%               
%              end
          
%          if f==0                 %% f=0 表示两点之间无障碍物，修改父节点
%                 Optimal_path(v,3) = Optimal_path(index_pP,3);
%                 Optimal_path(v,4) = Optimal_path(index_pP,4);
%          else                    %%% f/=0 表示两点之间有障碍物，不改变父节点 
%              if ifi==1
%                  v=index_pP ;   %%%有障碍物，则设当前点变为父节点，
%              else
%                  v=vi;
%              end
%          end   
             
             
   
      
  
   









