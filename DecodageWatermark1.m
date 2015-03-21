function W=DecodageWatermark1(IW,CPSA,N1,N2)
pas=sqrt(size(CPSA)(1));

W=zeros(N1,N2);

for r=1:N1
for c=1:N2

Bloc=IW((r-1)*pas+1:(r-1)*pas+pas,(c-1)*pas+1:(c-1)*pas+pas);
W(r,c)=ProdScalBloc(Bloc,CPSA);
end
end

W=sign(sign(W)/2+0.5);

return;