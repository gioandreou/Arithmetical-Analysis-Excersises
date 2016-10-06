function  y= Trapezio(a,b,z) %������� �� ������ �� ���� ��� ����������� (a,b) ��� ���� ������ z ��� ���� �� ���� ������ 
format long;                % ������� �� ��������� �� ��������.
syms x;
qq=(b-a)/(z-1);
c=0;
for i=1:z
   A(i,1)=c;         %���������� �� ������ ��� ������������.
   A(i,2)=sin(c);
   c=c+qq;
end
[m,v]=size(A);
n=m-1;
sum=A(1,2)+A(m,2);  % ��������� �� ����� ��� �� ��������� ������.
for i=2:n
    sum=sum+2*A(i,2);   % ��������� �� ��������� ������.
end
E=(b-a)/(2*n)*sum; % �� ��������� �������.
fprintf('H ������������� ���� ��� ������������� �����: %f\n',E);
e=(((b-a)^3)/(12*(n^2)))*getM(); %���������� �� ������ ����������� ��� �������������.
error=double(e);
fprintf('To ������ ����������� ��� ������������� �����: %f\n',error);
end

function y=getM() %���������� ��� ������� ���� ��� 2�� ���������.
    syms x;
    g(x)=sin(x);
    df=diff(g,2);
    y=abs(df(1));
end
