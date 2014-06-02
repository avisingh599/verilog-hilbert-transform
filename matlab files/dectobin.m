%import matlab.io.*
fid = fopen('sample_final.txt');
A = fscanf(fid, '%g', [1 32]);

fclose(fid);
a = fi(A, true, 32, 16);
binary_a = bin(a);
fileID = fopen('func_final.txt', 'w');
fprintf(fileID, binary_a);
fclose(fileID);