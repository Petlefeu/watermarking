function M= Hadamard(n)
M=1;
while n>0
M=[M,M;M,-M];
n--;
end
return;