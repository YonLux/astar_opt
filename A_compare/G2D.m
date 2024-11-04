% 把栅格地图转换为邻接矩阵
function D=G2D(G) %邻接矩阵就是每个栅格之间的距离
[m,n]=size(G); %返回矩阵G的尺寸 并存储在m行n列矩阵中
N=m*n; %元素个数   
D=zeros(N,N); %生成一个m*n的0矩阵
for Dx=1:N               
    for Dy=Dx:N       
        x1=ceil(Dx/n);%返回不小于x的最小整数值
        y1=mod(Dx,n); %Dx对n取余
        if y1==0
            y1=n;
        end
        x2=ceil(Dy/n);
        y2=mod(Dy,n);
        if y2==0
            y2=n;
        end
      if Dx==Dy
          D(Dx,Dy)=inf;
      elseif (G(x1,y1)==1) || (G(x2,y2)==1);
            D(Dx,Dy)=inf;
      else
            if (mod(Dx,n) ==1)
                if(Dx==1)
                    if (Dy-Dx==1) || (Dy-Dx==n)
                        D(Dx,Dy)=1;
                    elseif (Dy-Dx==n+1)
                        D(Dx,Dy)=sqrt(2);
                    else
                        D(Dx,Dy)=inf;
                    end
                elseif(Dx==N-n+1)
                    if (Dy-Dx==1) || (Dx-Dy==n)
                        D(Dx,Dy)=1;
                    elseif (Dx-Dy==n-1)
                        D(Dx,Dy)=sqrt(2);
                    else
                        D(Dx,Dy)=inf;
                    end
                else
                    if (Dy-Dx==1) || (Dy-Dx==n) || (Dx-Dy==n)
                        D(Dx,Dy)=1;
                    elseif (Dx-Dy==n-1) || (Dy-Dx==n+1)
                        D(Dx,Dy)=sqrt(2);
                    else
                        D(Dx,Dy)=inf;
                    end
                end
                
            elseif mod(Dx,n) ==0
                if(Dx==n)
                    if (Dx-Dy==1) || (Dy-Dx==n)
                        D(Dx,Dy)=1;
                    elseif (Dy-Dx==n-1)
                        D(Dx,Dy)=sqrt(2);
                    else
                        D(Dx,Dy)=inf;
                    end
                elseif(Dx==N)
                    if (Dx-Dy==1) || (Dy-Dx==n)
                        D(Dx,Dy)=1;
                    elseif (Dy-Dx==n+1)
                        D(Dx,Dy)=sqrt(2);
                    else
                        D(Dx,Dy)=inf;
                    end
                else
                    if (Dx-Dy==1) || (Dy-Dx==n) || (Dx-Dy==n)
                        D(Dx,Dy)=1;
                    elseif (Dy-Dx==n-1) || (Dx-Dy==n+1)
                        D(Dx,Dy)=sqrt(2);
                    else
                        D(Dx,Dy)=inf;
                    end
                end
                
            else
                if (Dx-Dy==1) || (Dy-Dx==1) || (Dy-Dx==n) || (Dx-Dy==n)
                    D(Dx,Dy)=1;
                elseif (Dx-Dy==n+1) || (Dy-Dx==n+1) || (Dy-Dx==n-1) || (Dx-Dy==n-1)
                    D(Dx,Dy)=sqrt(2);
                else
                    D(Dx,Dy)=inf;
                end
            end
      end
    end
end
for i=1:N
    for j=i:N
        if(i~=j)
            D(j,i)=D(i,j);
        end
    end
end
            
        









