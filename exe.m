m = 3;
k = m+1;
d = [ 1, 1;
      1, 2
      2, 2;
      2, 1;
    ];
p = length(d);

vecteur_noeud = 1:p+k+1;
interval = 1:0.5:10;
S = zeros(length(interval), 2);
for i=1:length(interval)
  for j=1:p
     S(i, 1) = S(i, 1) + d(j)*fonctionN(vecteur_noeud, interval(i), m, j);
     S(i, 2) = S(i, 1) + d(j)*fonctionN(vecteur_noeud, interval(i), m, j);
  end
end

plot(S(:, 1), S(:, 2))
pause;
% fonctionN(vecteur_noeud, t, m, i)
