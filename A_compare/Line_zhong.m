function lineOPEN=Line_zhong(Optimal_path,CLOSED,Num_obs,Num_Opt)

 n=Num_Opt;v=1;ji=0;
   while (n>1)
        ji=ji+1;
        n=n-1;
        parent_node=[Optimal_path(v,1),Optimal_path(v,2)];  %%% ��ǰ�������
        parentP_node=[Optimal_path(v,3),Optimal_path(v,4)]; %%% ��ǰ�㸸�ڵ������
        index_p=v;
        index_pP=Optimal_index(Optimal_path,Optimal_path(v,3),Optimal_path(v,4));%%% ָ�򸸽ڵ��λ��
        parentPP_node=[Optimal_path(index_pP,3),Optimal_path(index_pP,4)];  %%% ��ǰ��ĸ��ڵ�ĸ��ڵ�����
        
       
        
       x_n1 = parentP_node(1,1) - parent_node(1,1) ;  %%����1
       y_n1 = parentP_node(1,2) - parent_node(1,2) ;
       x_n2 = parentPP_node(1,1) - parentP_node(1,1) ;   %%����2
       y_n2 = parentPP_node(1,2) - parentP_node(1,2) ;
        
        angle=myangle( x_n1,y_n1,x_n2,y_n2);  %%%�ж����������ļн�
   
        if angle==0         %%%�н�Ϊ0��˵����һ��ֱ���ϣ��޸ĸ��ڵ�
            Optimal_path(v,3) = Optimal_path(index_pP,3);
            Optimal_path(v,4) = Optimal_path(index_pP,4);
        else             %%%%��Ϊ0����ת���ˣ��жϵ�ǰ���ת��֮��ĵ�֮�������ϰ���
            x1 = parent_node(1,1);    y1 = parent_node(1,2);
            x2 = parentP_node(1,1);   y2 = parentP_node(1,2);
            x3 = parentPP_node(1,1);  y3 = parentPP_node(1,2);
            
             f=Inline(x1,y1,x3,y3,CLOSED,Num_obs)  ;
             if f==0      %%% ���ϰ��� �ѵ�ǰ��ĸ��ڵ��޸ĳ�ת���Ľڵ�
                Optimal_path(v,3) = Optimal_path(index_pP,3);
                Optimal_path(v,4) = Optimal_path(index_pP,4);
             else        %%%% ���ϰ��� ��ѡ����һ����ǰ�� 
                 inh=index_pP-1;
                 v=index_pP;
                 S_node=sqrt((x1-x2)^2 + (y1-y2)^2)+sqrt((x3-x2)^2 + (y3-y2)^2);
                if inh>1
                    for t=inh:-1:index_p
                       if ( Optimal_path(t,1)~=x1 || Optimal_path(t,2)~=y1 )   %%%%�ж�ת���Ľڵ� �뵱ǰ���ת��ڵ��м�Ľڵ� ֮�������ϰ���
                            x_z = Optimal_path(t,1); 
                            y_z = Optimal_path(t,2);
                            f=Inline(x_z, y_z,x3,y3,CLOSED,Num_obs);
                          if f==0                                %%%% �����м�ڵ㵽ת���Ľڵ�֮�����ϰ���ĵ㣬��ǰ��ѡ��õ㣬�����ýڵ��޸ĳ�ԭ��ǰ��ĸ��ڵ�
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
          
%          if f==0                 %% f=0 ��ʾ����֮�����ϰ���޸ĸ��ڵ�
%                 Optimal_path(v,3) = Optimal_path(index_pP,3);
%                 Optimal_path(v,4) = Optimal_path(index_pP,4);
%          else                    %%% f/=0 ��ʾ����֮�����ϰ�����ı丸�ڵ� 
%              if ifi==1
%                  v=index_pP ;   %%%���ϰ�����赱ǰ���Ϊ���ڵ㣬
%              else
%                  v=vi;
%              end
%          end   
             
             
   
      
  
   









