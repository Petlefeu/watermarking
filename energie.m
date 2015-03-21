function e=energie(I,IW)
e=sum(sum((I-IW).*(I-IW)));
return;