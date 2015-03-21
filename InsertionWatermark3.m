function IW=InsertionWatermark3(I,W,w,k)
nbCPSA=size(w)(2);

IW=0*reshape(I,size(I)(1)*size(I)(2),1);
nbBloc=size(W)(1)*size(W)(2)/nbCPSA;
W=reshape(W,size(W)(1)*size(W)(2),1);
tailleBloc=(size(I)(1)*size(I)(2))/nbBloc;

for i=1:nbBloc
for n=1:nbCPSA

if W((i-1)*nbCPSA+n)==1
IW((i-1)*tailleBloc+1:i*tailleBloc)=IW((i-1)*tailleBloc+1:i*tailleBloc)+w(:,n);
end

if W((i-1)*nbCPSA+n)==0
IW((i-1)*tailleBloc+1:i*tailleBloc)=IW((i-1)*tailleBloc+1:i*tailleBloc)-w(:,n);
end

end
end
IW=I+k*reshape(IW,size(I)(1),size(I)(2));
return;

