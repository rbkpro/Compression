function  vect =zigzag(mat)
k=0;
vect=(1:64);
for i=1:8
   m=i; n=1;
    for j=1:i
        k=k+1;
        if mod(i,2)==1
            vect(k)=mat(m,n);
            vect(65-k)=mat(9-m,9-n);
        else
            if i~=8
                vect(k)=mat(n,m);
                vect(65-k)=mat(9-n,9-m);
            end
            vect(k)=mat(n,m);
        end
        m=m-1;n=n+1;      
    end      
end
end