function v=VecteurAleatoire(n)
v=rand(n,1);
v=v>median(v);
v=v*2-1;
return;