-- x1 = xone
-- y1 = yone
-- w1 = largura xone
-- h1 = altura xone
-- x2 = xtwo
-- y2 = ytwo
-- w2 = largura xtwo
-- h2 = altura xtwo 

function checa_colisao(xone,yone,w1,h1, xtwo,ytwo,w2,h2)
  return xone < xtwo+w2 and
         xtwo < xone+w1 and
         yone < ytwo+h2 and
         ytwo < yone+h1
end