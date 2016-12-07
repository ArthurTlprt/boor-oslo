m = 3
k = m+1
d = [ 1, 1;
      2, 2;
      3, 2;
      4, 1
    ];
p = length(d);
t = 1:0.05:10
S = 0
for i=1:p
   S = d(i)*N(t)


% N(vecteur_noeud, t, m, i)
