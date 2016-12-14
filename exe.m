m = 3;
k = m+1;
d = [ 1, 1;
      1, 2;
      2, 2;
      2, 1;
    ];

disp('Click gauche pour insérer les points de contrôle et click droit pour le dernier et terminer.');
tasto=1;
figure;
axis([0 10 0 10 ]);
grid on;
hold on;

x=[];y=[];
%t=input('valeur de t*: ');
while tasto == 1
  [xi,yi,tasto]=ginput(1);
  plot (xi,yi,'r*');
  x= [x xi];
  y= [y yi];
end
p = length(x);

vecteur_noeud = 1:p+k+1;
interval = 1:0.5:10;
S = zeros(length(interval), 2);
for i=1:length(interval)
  for j=1:p
     S(i, 1) = S(i, 1) + x(j)*fonctionN(vecteur_noeud, interval(i), m, j);
     S(i, 2) = S(i, 1) + y(j)*fonctionN(vecteur_noeud, interval(i), m, j);
  end
end

plot(S(:, 1), S(:, 2))
pause;
% fonctionN(vecteur_noeud, t, m, i)
