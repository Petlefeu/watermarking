function p=precision(W,W1)
p=1-sum(sum(abs(W-W1)))/(size(W)(1)*size(W)(2));
return;