function E=Automatic4dct(I,W,E)
#E=GenEspace(I,W);
#C=GenCoeff(I);
n1=size(W)(1);
n2=size(W)(2);
s=0;
n=0;
while 1
	k=1;
	p=0;
	w=VecteurAleatoire(size(E)(1));
	while p<0.9
		IW=InsertionWatermark4(I,W,w,E,k);
		W1=DecodageWatermark4(IW,w,E,n1,n2);
		p=precision(W,W1);
		k=k+1;
		disp(k);
	end;
	disp("resultat");
	disp(k);
	n=n+1;
	s=s+energie(JPEG(I,1),JPEG(IW,1))/(size(I)(1)*size(I)(2));
	s/n
	
end;

return;