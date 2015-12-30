function mat = inver_zigzag(vect)
k=0;
mat =zeros(8,8);
for i=1:8
   m=i; n=1;
    for j=1:i
        k=k+1;
        if mod(i,2)==1
            mat(m,n)=vect(k);
            mat(9-m,9-n)= vect(65-k);
        else
            if i~=8
                mat(n,m) = vect(k);
                mat(9-n,9-m)=vect(65-k);
            end
            mat(n,m)= vect(k);
        end
        m=m-1;n=n+1;      
    end  
end
end