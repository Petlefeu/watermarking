function E=GenEspace(I,W)
nbCellR=floor(size(I)(1)/8);
nbCellC=floor(size(I)(2)/8);

E=zeros(floor((nbCellR*nbCellC*22)/(size(W)(1)*size(W)(2))),3*size(W)(1)*size(W)(2));
x=1;
y=1;
k=1;
for r=1:size(E)(1)
	for c=1:size(W)(1)*size(W)(2)
			E(r,3*c-2)=x;
			E(r,3*c-1)=y;
			E(r,3*c)=k;
			k=mod(k,22)+1;
			if k==1 
				y=mod(y,nbCellC)+1; 
				if y==1 
					x=mod(x,nbCellR)+1; 
				end
			end

	end
end


#Maintenant que la matrice contient toute les valeurs, il faut les mélanger.
#D'abord les lignes.

E=E(randperm(size(E)(1)),:);

#Créer la permutation de colonnes.
rp=randperm(size(E)(2)/3);
p=[rp;rp;rp]*3;
for r=1:3
for c=1:size(E)(2)/3
p(r,c)=p(r,c)-3+r;
end
end
p=reshape(p,1,size(E)(2));

E=E(:,p);


return;




















