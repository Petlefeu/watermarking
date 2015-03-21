function v=ProdScalBloc(BLOC,w)
#on suppose que w et BLOC font la même taille
u=reshape(BLOC,1,size(w)(1));
v=0;
for i=1:size(w)(1)
v+=u(i)*w(i);
end
return;