x=0:pi/16:31*pi/16;
A=[50*sin(x)];

fileID = fopen('sample.txt', 'w');
fprintf(fileID, '%6.4f\n', A);
fclose(fileID);
