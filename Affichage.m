function omg = Affichage(e)
z= 0;
%s= size(e);
for i=1:8:s(1)
    for j=1:8:s(2)
        z=z+1;
        omg (i:i+7,j:j+7)= e{z};
    end
end
imshow (omg);