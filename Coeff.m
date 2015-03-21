function V= Coeff(I)
[nbR nbC] = size(I);
nbR=nbR/8;
nbC=nbC/8;

V=zeros(nbR,nbC);

for i=0:nbR-1
	for j=0:nbC-1
	
	J=I(i*8+1:i*8+8,j*8+1:j*8+8);
	J=dct2(J);
	
	v1=0;
	v2=0;
	
	for r=1:8
		for c=1:8
			
			if (r+c<=4 && r+2>1)
				v1=v1+J(r,c)^2;
			else
				v2=v2+J(r,c)^2;
			end
			

		end
	end
	if v2==0
		v2=0.00000000001;
	end
	
	V(i+1,j+1)=v1/v2;

	end
end


return;