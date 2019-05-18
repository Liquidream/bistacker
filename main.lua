require 'bits'
TS,N,x,y,p,m,w,c,t=0,9,5,N,3,1,{},0,10
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

  c=c+1
  if(c>t)then c=0 x=x+m 
    if(x<2 or x>N-p)then m=m*-1 end
  end
  print(x.." m2="..m)
  if(s==1)then
    if(y==N or x>=w[y+1].x and x+p-1<=w[y+1].x+w[y+1].p-1) then
      -- perfect!
    else
      -- lose life(s)
      p=p-1
    end
    if(p>=0) then w[y]={x=x,p=p} y=y-1 t=t*.8 end
  end
end