function vect_dct = dct_bloc (a)
%vect_dct= zeros(8,8,'uint8');
%a= double(a);
  for u= 1: 8
    for v=1:8
        bl_dct=0;
        for i=1:8
            for j=1:8
                r1= a(i,j);
                r2= cos( (((2*(i-1))+1)*(u-1)*pi)/16);
                r3= cos((((2*(j-1))+1)*(v-1)*pi)/16);
                bl_dct= bl_dct+ (r1*r2*r3);
            end
        end
        
        if (u==1) && (v==1)
            vect_dct(u,v)=round((1/8) * bl_dct);
        else
            if((u==1) && (v ~= 1))||((u~=1) && (v == 1))
              vect_dct(u,v)=round((1/(4*sqrt(2)))* bl_dct);
            else
              vect_dct(u,v)=round((1/4)*bl_dct);
          end
        end
       
    end
  end
end