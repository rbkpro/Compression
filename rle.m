function mat = rle(v)
r1 = v(1);
nb= 1;
l= 2;
for i=2:length(v)
    if v(i) == r1
        nb= nb+1;
    else
        mat(l-1) = nb;
        mat(l)= r1;
        l= l+2;
        nb=1;
        r1= v(i);
    end
end
 mat(l-1) = nb;
  mat(l)= r1;
end
        