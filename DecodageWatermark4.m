function W=DecodageWatermark4(IW,w,E,n1,n2)

W=zeros(n1*n2,1);
v=zeros(1,size(w)(1));
L=Correspondance(IW,E);

for i=1:(n1*n2)

for j=1:size(w)(1)
	v(j)=IW(L(j,i));
end

W(i)=v*w;

end

W=sign(reshape(W,n1,n2))/2+0.5;
#W=reshape(W,n1,n2);


return;