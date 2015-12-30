function  [resultat,orig] = Decompresion ()
cel = lecture ();
for i = 1: length (cel)
    sect = inver_Rle(cel{i});
    mat_invQuan = inver_zigzag(sect);
    mat_invdct = inver_Quantification ( mat_invQuan);
    resultat{i}= inver_dct (mat_invdct);
end
 z= 0;
 load h;
 load la;
for i=1:8:m
    for j=1:8:n
        z=z+1;
        orig (i:i+7,j:j+7)= uint8(resultat{z});
    end
end
imshow (orig);
end
    
    