function   result = Compresion ()
load file;
load chemin;
e = Bloc8 ([chemin file]);
s= size(e);
fid = fopen('c:\img.txt', 'w');
for i=1:s(2)
mat_dct = dct_bloc(e{i});
mat_quant = Quantification(mat_dct);
vect_zig = zigzag(mat_quant);
result{i} = rle(vect_zig);
ecriture(result{i});
end
end


