function a = alpha(i, j, tParam, t, k)
  i+k-j
  if (t(i+k-j)-t(i) == 0)
     a = 1;
  else
    a = (tParam-t(i)) / (t(i+k-j)-t(i));
  end
end
