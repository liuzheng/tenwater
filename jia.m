function r = jia(A,x)
if prod(size(x))==1
    a = reshape(1:36,6,6);
    [c d] = find(a==x);
    x = [c d];
end
r = zeros(6,6);
for i = x(1)-1:-1:1
    if A(i,x(2))~=0
        r(i,x(2)) = 1;
        break;
    end
end
for i = x(1)+1:6
    if A(i,x(2))~=0
        r(i,x(2)) = 1;
        break;
    end
end
for i = x(2)-1:-1:1
    if A(x(1),i)~=0
        r(x(1),i) = 1;
        break;
    end
end
for i = x(2)+1:6
    if A(x(1),i)~=0
        r(x(1),i) = 1;
        break;
    end
end
end