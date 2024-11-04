% ��դ���ͼת��Ϊ�ڽӾ���
function D=G2D(G) %�ڽӾ������ÿ��դ��֮��ľ���
[m,n]=size(G); %���ؾ���G�ĳߴ� ���洢��m��n�о�����
N=m*n; %Ԫ�ظ���   
D=zeros(N,N); %����һ��m*n��0����
for Dx=1:N               
    for Dy=Dx:N       
        x1=ceil(Dx/n);%���ز�С��x����С����ֵ
        y1=mod(Dx,n); %Dx��nȡ��
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
            
        









