
function fase_one_colisao_update(dt)

-- colisão
    -- checa_colisao(x1,y1,w1,h1, x2,y2,w2,h2)

   -- colisão

     function checa_colisao(x1,y1,w1,h1, x2,y2,w2,h2)
        return x1 < x2+w2 and
               x2 < x1+w1 and
               y1 < y2+h2 and
               y2 < y1+h1
    end

    -- CODIGO PARA REPULSÃO DO PLAYER AO DETECTAR CONTATO--
    -- 1 amarelo
    if checa_colisao(xone,yone,32,32, 0, 0,75, 550) then
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
      if checa_colisao(xone,yone,32,32, 75, 0, 800, 80) then
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

  if checa_colisao(xone,yone,32,32, 75,  425, 580, 80 ) then
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
    if checa_colisao(xone,yone,32,32, 593,  124, 60, 320 ) then
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
    if checa_colisao(xone,yone,32,32, 150,  550, 650, 80) then
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

    if checa_colisao(xone,yone,32,32, 720,  80, 100, 600) then
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

    if checa_colisao(xone,yone,32,32, 120, 318, 430, 60) then
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


    -- 8  azul claro

    if checa_colisao(xone,yone,32,32, 120,  125, 500, 60  ) then
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

    if checa_colisao(xone,yone,32,32, 120,  180, 60, 200) then
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

if checa_colisao(xone,yone,32,32, 490,  230, 60, 100 ) then
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
    if checa_colisao(xone,yone,32,32, 220,  230, 280, 50) then
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
