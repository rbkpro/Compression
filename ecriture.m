function ecriture(vect)
fid = fopen('c:\img.txt', 'a');
for i= 1: length(vect)
fprintf(fid,'%i',vect(i));
fprintf(fid,'%s',' ');
end
fprintf(fid,'%i \n','');
%fprintf(fid,'%i\t %i\t %i\n',y);
%n'oublie pas de fermer le fichier sinon tu ,ne peux pas le lire
fclose(fid);
end