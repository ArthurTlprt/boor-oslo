function [x, y] = algo_de_boor(xp,yp,k,t)
  n = length(xp);
  interval = t(k):0.1:t(n+2)
  x=[];
  y=[];
  for tParam=interval
    X = zeros(n,n);
    Y = zeros(n,n);
    X(:,1)=xp;
    Y(:,1)=yp;
    for i=(k+1:n+2)
      if(tParam<=t(i))
        r = i-1;
        break;
      end
    end
    for j=(1:k-1)
      for i=(r-k+j+1:r)
          alpha = (tParam-t(i)) / (t(i+k-j)-t(i));
          X(i,j+1) = (1-alpha)*X(i-1,j)+alpha*X(i,j);
          Y(i,j+1) = (1-alpha)*Y(i-1,j)+alpha*Y(i,j);
      end
    end
    X
    x(end+1) = X(r,k);
    y(end+1) = Y(r,k);
  end
end
