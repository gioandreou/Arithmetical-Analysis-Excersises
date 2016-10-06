clc;
clear all;
close all;
%format short;
syms x;
A=[0,5,10,15,20,25,30,35,40,45,50,55]';
B=[0,.087,.174,.259,.342,.423,.500,.574,.643,.707,.766,.819]';
n=size(A);
k=0;
sk=1;
teliko=0;
for j=1:n
    bk=1;
    for i=2:n
        if (i==j)
            k=i;
            for l=1:k-1
                sk=sk*(x-A(l))/(A(j)-A(l));
            end
        else
            bk=bk*(x-A(i))/(A(j)-A(i));
        end
        apotelesma=sk*bk;
        
    end
    teliko=teliko+apotelesma*B(j);
    
end
 teliko; 
 pretty(teliko);
 simplify(teliko);
