function reslt= inver_Rle(vect)
l=0;
r= 1;
for i=1:2:length(vect)
    l= l+ vect(i);
   reslt(r:l)= vect(i+1);
    r= l+1;
end
end