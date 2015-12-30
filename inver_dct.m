function invers_dct = inver_dct (a)
  for u= 1: 8
    for v=1:8
        image = 0;
        for i=1:8
            for j=1:8
        if (i==1) && (i==1)
           m = 1/2;
        else
            if((i==1) && (j ~= 1))||((i~=1) && (j == 1))
              m = 1 / sqrt(2);
            else
             m = 1;
            end
        end
                r1= a(i,j);
                r2= cos( (((2*(u-1))+1)*(i-1)*pi)/16);
                r3= cos((((2*(v-1))+1)*(j-1)*pi)/16);
                image = round(image+ (r1*r2*r3*m));
            end
        end 
        invers_dct(u,v) =round( 1/4 *  image);
    end
  end
end