function dist = distance(x1,y1,x2,y2)

dist=sqrt((x1-x2)^2 + (y1-y2)^2);
%  ���� �����پ��� h(n) = abs(nx - goalx) + abs(ny - goaly)
%       �б�ѩ����� h(n) = max[abs(nx - goalx),abs(ny - goaly)