function J=CompressionJPEG(P)
#Transformation des couleurs
J=P-128;
r=size(P)(1);
c=size(P)(2);
for i=0:r/8-1
	for j=0:r/8-1
		B=J(i*8+1:(i+1)*8,j*8+1:(j+1)*8);
		pixel=B;
		for k=1:8
		for l=1:8
			somme=0;
			for x=0:7
			for y=0:7
				somme=somme+pixel(x+1,y+1)*cos((2*x+1)*k*pi/16)*cos((2*y+1)*l*pi/16);
			end
			end
			B(k,l)=2/8*somme;
		end
		end
		J(i*8+1:(i+1)*8,j*8+1:(j+1)*8)=B;
	end
end
return;