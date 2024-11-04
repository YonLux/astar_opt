function createfigure3(X1, YMatrix1)
%CREATEFIGURE(X1, YMATRIX1)
%  X1:  x ���ݵ�ʸ��
%  YMATRIX1:  y ���ݵľ���

%  �� MATLAB �� 11-Jun-2019 11:07:23 �Զ�����

% ���� figure
figure1 = figure;

% ���� axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% ʹ�� plot �ľ������봴������
plot1 = plot(X1,YMatrix1);
set(plot1(1),'DisplayName','���ٶ�','Color',[0 0 1]);
set(plot1(2),'DisplayName','���ٶ�','Color',[1 0 0]);

% ���� xlabel
xlabel('���ƽڵ����','FontSize',11);

% ���� ylabel
ylabel('���ٶ�(m/s) ���ٶ�(rad/s)','FontSize',11);

% ȡ�������е�ע���Ա���������� X ��Χ
% xlim(axes1,[0 2100]);
% ȡ�������е�ע���Ա���������� Y ��Χ
% ylim(axes1,[-0.4 0.8]);
% ������������������
set(axes1,'XTick',...
    [0 100 200 300 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100],...
    'YTick',[-0.4 -0.2 0 0.2 0.4 0.6 0.8]);
% ���� legend
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.826100061247333 0.206397316431758 0.0696202521944994 0.0737373718107587]);

