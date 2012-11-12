function state=addone(A,water)
I = find(A>=(5-water));
state=0;
for i=1:size(I)
    if sum(sum(A))==0
        java.lang.System.out.println('successful');
        state=1;
        break
    elseif water==0
       % java.lang.System.out.println('fall');
        break
    else
        AA=A;
        AA(I(i))=A(I(i))+1;
        w=-1;
        r=0;
        if size(find(AA==5))>0
            [AA r]=tenwater_break(AA,r);
            w = w+floor(r/3);
        end
        state=addone(AA,water+w);
        if state==1
            disp([num2str(I(i)),' ',num2str(water) ,' ',num2str(r)])
            A
            break
        end
    end
end
end