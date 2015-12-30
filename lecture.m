function cel = lecture ()
fi = fopen('c:\img.txt', 'r');						
D = textscan(fi,'%s','delimiter','\n','whitespace','');
fi = fclose(fi);
for i =1: length(D{1})
cel{i}= str2num(D{1}{i});
end
end