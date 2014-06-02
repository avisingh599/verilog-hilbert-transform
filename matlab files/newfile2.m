x=0:pi/16:31*pi/16;
A=[10*sin(x) + 80*cos(x)];

fileID = fopen('sample2.txt', 'w');
fprintf(fileID, '%6.4f\n', A);
fclose(fileID);


