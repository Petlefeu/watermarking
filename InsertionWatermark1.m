function IW=InsertionWatermark1(I,W,CPSA,k)
N1=size(I)(1)/sqrt(size(CPSA)(1));
N2=size(I)(2)/sqrt(size(CPSA)(1));
pas=sqrt(size(CPSA)(1));
#IW=[N1,N2,pas];
#return;
IW=zeros(size(I)(1),size(I)(2));

for r=1:N1
for c=1:N2
if W(r,c)==1
IW((r-1)*pas+1:(r-1)*pas+pas,(c-1)*pas+1:(c-1)*pas+pas)=k*reshape(CPSA,pas,pas);
else
IW((r-1)*pas+1:(r-1)*pas+pas,(c-1)*pas+1:(c-1)*pas+pas)=-k*reshape(CPSA,pas,pas);
end
end
end
IW=I+IW;


return;

