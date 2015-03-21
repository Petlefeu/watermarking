function H=NbCPSA(r,c,w)
#donne une matrice r*c où les colonnes sont ortho à w
v=NbHadamard(c,log2(r));
H=[];
for i=1:c
H=[H,w.*v(:,i)];
end
return;