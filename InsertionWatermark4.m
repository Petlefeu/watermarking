function IW=InsertionWatermark4(I,W,w,E,k)

if size(w)(1)!=size(E)(1)
	disp("w et E incompatible");
	return;
end

IW=I;
L=Correspondance(I,E);

for i=1:size(E)(2)/3

if W(i)==1
for j=1:size(E)(1)
IW(L(j,i))=IW(L(j,i))+k*w(j);
end
end

if W(i)==0
for j=1:size(E)(1)
IW(L(j,i))=IW(L(j,i))-k*w(j);
end
end
end

#IW=I+k*reshape(IW,size(I)(1),size(I)(2));
return;

