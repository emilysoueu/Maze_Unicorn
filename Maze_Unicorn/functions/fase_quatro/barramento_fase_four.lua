
function fase_four_colisao_update(dt)

 function checa_colisao(x1,y1,w1,h1, x2,y2,w2,h2)
        return x1 < x2+w2 and
               x2 < x1+w1 and
               y1 < y2+h2 and
               y2 < y1+h1
 end
  --[[
   -- colisão

    -- CODIGO PARA REPULSÃO DO PLAYER AO DETECTAR CONTATO--
    -- 1 amarelo
    if checa_colisao(player.posX, player.posY,16,16, 0,   0, 80, 650 ) then
          player.posY = 700
        player.posX = 0
    end


    -- 2 vermelho
      if checa_colisao(player.posX, player.posY,16,16,75,  0, 1200, 60) then
         player.posY = 700
        player.posX = 0
    end

    -- 3 branco

  if checa_colisao(player.posX, player.posY,16,16, 75,  525, 263, 80) then
         player.posY = 700
        player.posX = 0
    end

    -- 4 azul
    if checa_colisao(player.posX, player.posY,16,16, 800,  99, 80, 280) then
       player.posY = 700
        player.posX = 0
    end


    -- 5  verde
    if checa_colisao(player.posX, player.posY,16,16,150,  650, 1200, 80 ) then
       player.posY = 700
        player.posX = 0
    end


    -- 6  rosa 

    if checa_colisao(player.posX, player.posY,16,16, 930,  125, 100, 600 ) then
       player.posY = 700
        player.posX = 0
    end


    -- 7  azul ciano

    if checa_colisao(player.posX, player.posY,16,16, 125, 100, 329.5, 60) then
        player.posY = 700
        player.posX = 0
    end


    -- 8  laranja

    if checa_colisao(player.posX, player.posY,16,16, 336,  430, 544, 80 ) then
       player.posY = 700
        player.posX = 0
    end


    -- 9  verde neon

    if checa_colisao(player.posX, player.posY,16,16, 258,  200, 80, 353) then
       player.posY = 700
        player.posX = 0
    end

    -- 10 cinza

if checa_colisao(player.posX, player.posY,16,16, 400,  55, 80, 200) then
       player.posY = 700
        player.posX = 0
    end

    -- 11 rosa meio
    if checa_colisao(player.posX, player.posY,16,16, 520,  100, 280, 80 ) then
       player.posY = 700
        player.posX = 0
    end

    -- 12 roxo
    if checa_colisao(player.posX, player.posY,16,16, 670,  235, 80, 200) then
        player.posY = 700
        player.posX = 0
    end

    -- 13 vermelho baixo

    if checa_colisao(player.posX, player.posY,16,16, 470,  550, 80, 100) then
       player.posY = 700
        player.posX = 0
    end
]]
    -- 14 portal
    if checa_colisao(player.posX, player.posY,16,16, portal.x,portal.y, 16, 16)  then
       win()
    end

    -- mais tempo
     if checa_colisao(player.posX, player.posY,16,16, m_tempo.x, m_tempo.y, 32, 32)  then
        relogy = relogy + 5
    end

    -- mais pontos
    if checa_colisao(player.posX, player.posY,16,16, m_pontos.x, m_pontos.y, 32, 32)  then
        relogy = relogy - 10
    end

end
