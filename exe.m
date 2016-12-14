m = 4;
k = m+1;

d = [ 1, 8;
      2, 6;
      3, 4;
      4, 5;
      5, 4;
      6, 2;
      7, 1;
    ];

p = length(d);

vecteur_noeud = 1:p+k+1;

interval = k:0.05:p+1;
x = zeros(length(interval), 1);
y = zeros(length(interval), 1);



for i=1:length(interval)
  for j=1:p
    x(i) = x(i) + d(j, 1)*fonctionN(vecteur_noeud, interval(i), m, j);
    y(i) = y(i) + d(j, 2)*fonctionN(vecteur_noeud, interval(i), m, j);
  end
end

plot(x, y)
pause;
