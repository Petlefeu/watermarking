function W=DecodageWatermark3(IW,w,n1,n2)
IW1=reshape(IW,size(IW)(1)*size(IW)(2),1);
W=zeros(n1*n2,1);
nbCPSA=size(w)(2);
tailleBloc=(size(IW)(1)*size(IW)(2))/(n1*n2);
tailleBloc=tailleBloc*nbCPSA;
n=1;
for i=1:(n1*n2)/nbCPSA
for j=1:nbCPSA
W(n)=IW1((i-1)*tailleBloc+1:i*tailleBloc)'*w(:,j);
n++;
end
end

W=sign(reshape(W,n1,n2))/2+0.5;
#W=reshape(W,n1,n2);


return;