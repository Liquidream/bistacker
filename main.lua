require 'bits'
TS,N,x,y,p,m,w=0,9,5,N,1,.05,{}
function _D()
  BG(3)
  for i=1,N do
    if(w[i])then
      H(i,w[i].x,w[i].x+(w[i].p-1),7)
    end
  end
  H(y,x,x+p-1,7)
end
function _U(dt)
  FX(s*4)
  x=x+m
  print(x.." m1="..m)
  if(x<1.5 or x>N-p+1)then m=m*-1 end
  print(x.." m2="..m)
  if(s==1)then
    if(y==N or x>=w[y+1].x and x+p-1<=w[y+1].x+w[y+1].p-1) then
      -- perfect!
    else
      -- lose life(s)
      p=p-1
    end
    if(p>=0) then w[y]={x=x,p=p} y=y-1 m=m*1.1 end
  end
end