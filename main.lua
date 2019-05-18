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
 c=c+1
 if(c>t)then c=0 x=x+m
  if(x<2 or x>N-p)then m=m*-1 FX(2) end
 end
 if(s==1)then
  z=0
  for i=0,p-1 do
    if(y~=N and G(x+i,y+1)<7)then
      p=p-1 FX(3)
    elseif(z<1)then
      z=x+i
    end
  end
  if(p>0)then
    FX(5)
    if(y<2)then WIN()end
    w[y]={x=z,p=p} y=y-1 t=t*.8
  else
    DIE()
  end
 end
end