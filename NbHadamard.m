function M=NbHadamard(n,j)
M=Hadamard(j);
while n<size(M)(2)
	M(:,floor(rand*size(M)(2))+1)=[];
end
return;