
function fase_two_colisao_update(dt)

 function checa_colisao(x1,y1,w1,h1, x2,y2,w2,h2)
        return x1 < x2+w2 and
               x2 < x1+w1 and
               y1 < y2+h2 and
               y2 < y1+h1
 end
  
   -- colisão

    -- CODIGO PARA REPULSÃO DO PLAYER AO DETECTAR CONTATO--
    -- 1 amarelo
    if checa_colisao(xone,yone,32,32, 0,   0, 80, 650 ) then
        if xone <= 0 then
            xone = xone - 15
        end
        if yone <= 0 then
           yone = yone - 15
        end
        if xone >= 0 then
           xone = xone + 15
        end
        if yone >= 0 then
           yone = yone + 15
        end
    end


    -- 2 vermelho
      if checa_colisao(xone,yone,32,32, 75,  0, 1200, 60 ) then
        if xone <= 0 then
            xone = xone - 15
        end
        if yone <= 0 then
           yone = yone - 15
        end
        if xone >= 0 then
           xone = xone + 15
        end
        if yone >= 0 then
           yone = yone + 15
        end
    end

    -- 3 branco

  if checa_colisao(xone,yone,32,32, 75,  525, 805, 80 ) then
        if xone <= 0 then
            xone = xone - 15
        end
        if yone <= 0 then
           yone = yone - 15
        end
        if xone >= 0 then
           xone = xone + 15
        end
        if yone >= 0 then
           yone = yone + 15
        end
    end

    -- 4 azul
    if checa_colisao(xone,yone,32,32, 800,  250, 80, 320 ) then
        if xone <= 0 then
            xone = xone - 15
        end
        if yone <= 0 then
           yone = yone - 15
        end
        if xone >= 0 then
           xone = xone + 15
        end
        if yone >= 0 then
           yone = yone + 15
        end
    end


    -- 5  verde
    if checa_colisao(xone,yone,32,32, 150,  650, 1200, 80  ) then
        if xone <= 0 then
            xone = xone - 15
        end
        if yone <= 0 then
           yone = yone - 15
        end
        if xone >= 0 then
           xone = xone + 15
        end
        if yone >= 0 then
           yone = yone + 15
        end
    end


    -- 6  rosa

    if checa_colisao(xone,yone,32,32, 930,  125, 100, 600) then
        if xone <= 0 then
            xone = xone - 15
        end
        if yone <= 0 then
           yone = yone - 15
        end
        if xone >= 0 then
           xone = xone + 15
        end
        if yone >= 0 then
           yone = yone + 15
        end
    end


    -- 7  azul ciano

    if checa_colisao(xone,yone,32,32,150, 420, 329.5, 60) then
        if xone <= 0 then
            xone = xone - 15
        end
        if yone <= 0 then
           yone = yone - 15
        end
        if xone >= 0 then
           xone = xone + 15
        end
        if yone >= 0 then
           yone = yone + 15
        end
    end


    -- 8  laranja

    if checa_colisao(xone,yone,32,32,220,  125, 1000, 80  ) then
        if xone <= 0 then
            xone = xone - 15
        end
        if yone <= 0 then
           yone = yone - 15
        end
        if xone >= 0 then
           xone = xone + 15
        end
        if yone >= 0 then
           yone = yone + 15
        end
    end


    -- 9  verde neon

    if checa_colisao(xone,yone,32,32, 150,  125, 80, 353 ) then
        if xone <= 0 then
            xone = xone - 15
        end
        if yone <= 0 then
           yone = yone - 15
        end
        if xone >= 0 then
           xone = xone + 15
        end
        if yone >= 0 then
           yone = yone + 15
        end
    end



    -- 10 cinza

if checa_colisao(xone,yone,32,32,400,  250, 80, 200 ) then
        if xone <= 0 then
            xone = xone - 15
        end
        if yone <= 0 then
           yone = yone - 15
        end
        if xone >= 0 then
           xone = xone + 15
        end
        if yone >= 0 then
           yone = yone + 15
        end
    end


    -- 11  rosa meio
    if checa_colisao(xone,yone,32,32,600,  250, 280, 80 ) then
        if xone <= 0 then
            xone = xone - 15
        end
        if yone <= 0 then
           yone = yone - 15
        end
        if xone >= 0 then
           xone = xone + 15
        end
        if yone >= 0 then
           yone = yone + 15
        end
    end

      -- 12  roxo
    if checa_colisao(xone,yone,32,32,529.5,  250, 80, 200 ) then
       if xone <= 0 then
            xone = xone - 15
        end
        if yone <= 0 then
           yone = yone - 15
        end
        if xone >= 0 then
           xone = xone + 15
        end
        if yone >= 0 then
           yone = yone + 15
        end
    end
end
