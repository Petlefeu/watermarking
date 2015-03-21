function I=ReadIm(chemin,b)
if b==0
	I=imread(chemin);
    I=I(:,:,1);
	I=double(I);
	return;
else
	I=sign(double(imread(chemin))-b)/2+0.5;
    I=I(:,:,1);
	return;
end;