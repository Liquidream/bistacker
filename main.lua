require 'bits'
TS,N,x,y,p,m,w=0,9,5,N,3,.2,{}
function _D()
  BG(3)
  for i=1,N do
    if(w[i])then
      H(i,w[i][1],w[i][1]+(w[i][2]-1),7)
    end
  end
  H(y,x,x+(p-1),7)

  --A(x,y)
end
function _U(dt)
  FX(s*4)
  x=x+m
  if(x<2 or x>N-p+1)then m=m*-1 end
  if(s==1)then w[y]={x,p} y=y-1 end
end