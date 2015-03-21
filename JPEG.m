function J= JPEG(I,int)
#int=0 veut dire codage dct2 et 1 veut dire idct2

J=I;
r=size(I)(1);
c=size(I)(2);

if int==0

for i=0:r/8-1
	for j=0:r/8-1
		J(i*8+1:(i+1)*8,j*8+1:(j+1)*8)=dct2(I(i*8+1:(i+1)*8,j*8+1:(j+1)*8));
	end
end

return;
end

if int==1

for i=0:r/8-1
	for j=0:r/8-1
		J(i*8+1:(i+1)*8,j*8+1:(j+1)*8)=idct2(I(i*8+1:(i+1)*8,j*8+1:(j+1)*8));
	end
end

return;
end