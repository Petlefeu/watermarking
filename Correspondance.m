function L=Correspondance(I,E)
L=zeros(size(E)(1),size(E)(2)/3);
nbR=floor(size(I)(1)/8);

for r=1:size(L)(1)
	for c=1:size(L)(2)
		x=E(r,3*c-2);
		y=E(r,3*c-1);
		l=[(x-1)*8+1,(y-1)*8+1];
		z=E(r,3*c);
		if z==1 l=l+[3,0]; end
		if z==2 l=l+[4,0]; end
		if z==3 l=l+[5,0]; end
		if z==4 l=l+[6,0]; end
		if z==5 l=l+[2,1]; end
		if z==6 l=l+[3,1]; end
		if z==7 l=l+[4,1]; end
		if z==8 l=l+[5,1]; end
		if z==9 l=l+[1,2]; end
		if z==10 l=l+[2,2]; end
		if z==11 l=l+[3,2]; end
		if z==12 l=l+[4,2]; end
		if z==13 l=l+[0,3]; end
		if z==14 l=l+[1,3]; end
		if z==15 l=l+[2,3]; end
		if z==16 l=l+[3,3]; end
		if z==17 l=l+[0,4]; end
		if z==18 l=l+[1,4]; end
		if z==19 l=l+[2,4]; end
		if z==20 l=l+[0,5]; end
		if z==21 l=l+[1,5]; end
		if z==22 l=l+[0,6]; end
		l=l+[0,-1];
		L(r,c)=l(1)+l(2)*size(I)(1);
	end
end


		#L(r,c)=(ceil(x/nbR)-1)*8*nbR+mod(x-1,nbR)*8+1;


return;