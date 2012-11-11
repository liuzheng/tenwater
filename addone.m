function addone(A,water)
for i=1:36
    if sum(sum(A))==0
        java.lang.System.out.println('successful');
        break
    elseif water==0
       % java.lang.System.out.println('fall');
        break
    else
        A(i)=A(i)+1;
        water=water-1;
        r=0;
        if size(find(A==5))>0
            [A r]=tenwater_break(A,r);
            water = water+(r-mod(r,3))/3;
        end
        addone(A,water);
    end
end
end