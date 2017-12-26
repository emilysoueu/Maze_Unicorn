


function fase_one_colisao_update(dt)

     function checa_colisao(x1,y1,w1,h1, x2,y2,w2,h2)
        return x1 < x2+w2 and
               x2 < x1+w1 and
               y1 < y2+h2 and
               y2 < y1+h1
    end
  
   -- colisão

    -- CODIGO PARA REPULSÃO DO PLAYER AO DETECTAR CONTATO--
    -- 1 amarelo
    if checa_colisao(xone,yone,32,32, 0,   0, 75, 560) then
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
      if checa_colisao(xone,yone,32,32,  75,  0, 950, 80) then
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

  if checa_colisao(xone,yone,32,32,75,  480, 800, 80 ) then
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
    if checa_colisao(xone,yone,32,32,795,  124, 80, 380 ) then
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
    if checa_colisao(xone,yone,32,32,  80,  630, 850, 80 ) then
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

    if checa_colisao(xone,yone,32,32, 920,  80, 100, 630) then
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

    if checa_colisao(xone,yone,32,32,  120, 360, 635, 80) then
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

    if checa_colisao(xone,yone,32,32, 120,  125, 750, 65 ) then
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

    if checa_colisao(xone,yone,32,32,  120,  180, 80, 260 ) then
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

if checa_colisao(xone,yone,32,32,  675,  230, 80, 140 ) then
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
    if checa_colisao(xone,yone,32,32, 245,  230, 495, 80 ) then
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

    --12 portal 
   if checa_colisao(xone,yone,32,32, xport,yport, 32, 32) and estadoJogo == "one_fase" then 
       two_fase()
    end

end
