function L=BlocPlat(I,p)
C=Coeff(I);
C=reshape(C,1,size(C)(1)*size(C)(2));
L=[];

for i=1:size(C)(2);
	if C(i)<=p
		L=[L,i];
	end
end



return;