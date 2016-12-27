m = 3;
k = m+1;

% d = [ 1, 8;
%       2, 6;
%       3, 4;
%       4, 5;
%       5, 4;
%       6, 2;
%       7, 1;
%     ];
%
% p = length(d);
%

disp('Click gauche pour insérer les points de contrôle et click droit pour le dernier et terminer.');
tasto=1;
figure;
axis([0 10 0 10 ]);
grid on;
hold on;


pcx=[];pcy=[];
while tasto == 1
  [xi,yi,tasto]=ginput(1);
  plot (xi,yi,'r*');
  pcx= [pcx xi];
  pcy= [pcy yi];
end

p = length(pcx);
t = 1:p+k+1;  % vecteur noeud

xr = zeros(p, p);
xr(:,1) = transpose(pcx);
yr = zeros(p, p);
yr(:,1) = transpose(pcy);


interval = k:0.05:p+1;
x = zeros(length(interval), 1);
y = zeros(length(interval), 1);

for tParam=interval
  for i=2:p
    for j=2:p
      i
      j
      xr(i, j) = (1- alpha(i, j, tParam, t, k)) * xr(i-1, j-1) + alpha(i, j, tParam, t, k) * xr(i-1, j);
      yr(i, j) = (1- alpha(i, j, tParam, t, k)) * yr(i-1, j-1) + alpha(i, j, tParam, t, k) * yr(i-1, j);
    end
  end
end

xr
yr

% for i=1:length(interval)
%   for j=1:p
%     x(i) = x(i) + pcx(j)*fonctionN(t, interval(i), m, j);
%     y(i) = y(i) + pcy(j)*fonctionN(t, interval(i), m, j);
%   end
% end
%
% plot(x, y)
%
%
% pause;
