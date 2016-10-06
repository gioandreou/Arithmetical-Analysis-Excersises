
n=10;
for i=1:n
    for j=1:n
        if i==j
            A(i,j)=5;
        end
        if j==i+1
            A(i,j)=-2;
            end
        if i==j+1
            A(i,j)=-2; 
            end
    end
end
for i=1:n
    if i==1
        b(i)=3;
    elseif i==n
        b(i)=3;
    else
        b(i)=1;
    end
end

for i=1:n
    T(i)=0;
end 
A
b
for i=1:n
    fprintf('x%d=\n',i);
        for j=1:n
            if (i==1)
                T(i)=b(i)/A(i)

            end
        end
end

