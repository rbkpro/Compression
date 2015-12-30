function e = Bloc8 (image)
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
[h la]= size(p);
save h;
save la;
l=0;
for i=1:8:h
    for j=1:8:la
          l= l+1;    
          ph = p(i:i+7,j:j+7);
          e{l}= double(ph);
    end
end

