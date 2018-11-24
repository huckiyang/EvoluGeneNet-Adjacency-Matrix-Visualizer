function num = MotifVerf(M)
%   For verification the generated motifs model
%	Huck 2018

Ver= zeros(3,3);
Clas=[-1 -1 -1; -1, 1 ,1; -1 -1 1];
num=0;
for a=1:100
    count=6*a-5;
    for b=1:3
        for c=1:3
            d=c+count-1;
            V=M(d,b);
            if(V>0)
                V=1;
            else
                V=-1;
            end
            Ver(c,b)=V;

        end
    end
    if(Ver~=Clas)
        fprintf('%d\n',a);
    else
        num=num+1;
        
    end
end

fprintf(' There are %d Classical French Flag Models.\n',num);