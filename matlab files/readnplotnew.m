clear all
fid = fopen('mem_out_func2.txt');
A = fscanf(fid,'%s', [1 1024]);
q=quantizer([32 16]);
for n=1:32
    b(n,1:32) =A(32*n - 31: 32*n);
end
c = bin2num(q,b);
x = [0:pi/1600:pi/50 - pi/1600];

plot(x,c);
xlabel('time');
ylabel('H(u(t))');
title('Hilbert Transform');
print -djpeg plot2.jpg;
