function IW=InsertionWatermark4_2(I,W,w,E,k,p)

if size(w)(1)!=size(E)(1)
	disp("w et E incompatible");
	return;
end

B=BlocPlat(I,p);
nbR=floor(size(I)(1)/8);
b=1;
IW=I;
L=Correspondance(I,E);

for i=1:size(E)(2)/3

if W(i)==1
	for j=1:size(E)(1)
			for a=1:length(B)
				if E(j,3*(i-1)+1)+(E(j,3*(i-1)+2)-1)*nbR==B(a)
				b=0;
				end
			end
	IW(L(j,i))=IW(L(j,i))+b*k*w(j);
	b=1;
	end
end

if W(i)==0
	for j=1:size(E)(1)
			for a=1:length(B)
				if E(j,3*(i-1)+1)+(E(j,3*(i-1)+2)-1)*nbR==B(a)
					b=0;
				end	
			end
	IW(L(j,i))=IW(L(j,i))-b*k*w(j);
	b=1;
	end
end
end

#IW=I+k*reshape(IW,size(I)(1),size(I)(2));
return;

