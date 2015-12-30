function e = bloc88 (image)
p= imread(image);
[m n]= size(p);
sr= mod (m,8);
tr= mod(n,8);
if (sr ~= 0) || (tr ~= 0)
    if (sr==0)
       p(1:m,n+1:n+(8-tr))= 0;
    end
    if (tr ==0)
      p(m+1:m+(8-sr),1:n)= 0;
    end
    if (sr ~= 0) && (tr ~= 0)
    p( m+1:m+(8-sr),n+1: n+(8-tr))= 0;
    end
end
s= size(p);
l=0;
for i=1:8:s(1)
    for j=1:8:s(2)
          l= l+1;    
          ph = p(i:i+7,j:j+7);
          e{l}= ph;
    end
end
