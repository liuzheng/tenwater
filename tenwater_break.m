function [A r] = tenwater_break(A,r)
[a b] = find(A==5);
if size(b)==1
    A(a,b)=0;
    r = r+1;
    A=A+jia(A,[a b]);
    if size(find(A==5))~=0
        [A r] = tenwater_break(A,r);
    end
else
    for i = 1:size(a)
        A(a(i),b(i))=0;
        r = r+1;
    end
    for i = 1:size(a)
        A = A+jia(A,[a(i) b(i)]);
        
    end
    if size(find(A==5))~=0
        [A r] = tenwater_break(A,r);
    end
end

end