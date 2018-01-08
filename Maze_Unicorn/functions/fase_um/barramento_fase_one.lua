require "functions/colisao"

function fase_one_colisao_update(dt)   

    -- CODIGO PARA REPULSÃO DO PLAYER AO DETECTAR CONTATO--
    ---- 1 amarelo
    if checa_colisao(player.posX, player.posY,16,16, 0,   0, 75, 560) then
        player.posY = 700
        player.posX = 0
        love.audio.play(som_toque)
    end

    -- 2 vermelho
      if checa_colisao(player.posX,player.posY,16,16,75,  0, 950, 80) then
        player.posY = 700
        player.posX = 0
        love.audio.play(som_toque)
    end

    -- 3 branco
  if checa_colisao(player.posX,player.posY,16,16, 75,480, 800, 80 ) then
        player.posY = 700
        player.posX = 0
        love.audio.play(som_toque)
    end

    -- 4 azul
    if checa_colisao(player.posX,player.posY,16,16,795,124, 80, 380 ) then
       player.posY = 700
       player.posX = 0
       love.audio.play(som_toque)
    end

    -- 5  verde
    if checa_colisao(player.posX ,player.posY,16,16,80,  630, 850, 80 ) then
        player.posY = 700
        player.posX = 0
        love.audio.play(som_toque)
    end

    -- 6  rosa
    if checa_colisao(player.posX ,player.posY,16,16,920,  80, 100, 630) then
       player.posY = 700
       player.posX = 0
       love.audio.play(som_toque)
    end

    -- 7  azul ciano
    if checa_colisao(player.posX, player.posY,16,16,120, 360, 635, 80) then
        player.posY = 700
        player.posX = 0
        love.audio.play(som_toque)
    end

    --8  azul claro
    if checa_colisao(player.posX,player.posY,16,16,120,  125, 750, 65 ) then
        player.posY = 700
        player.posX = 0
        love.audio.play(som_toque)
    end

    -- 9  verde neon
    if checa_colisao(player.posX,player.posY,16,16,120,  180, 80, 260 ) then
        player.posY = 700
        player.posX = 0
        love.audio.play(som_toque)
    end

    -- 10 cinza
if checa_colisao(player.posX,player.posY,16,16,675, 230, 80, 140 ) then
       player.posY = 700
       player.posX = 0
       love.audio.play(som_toque)
    end


    -- 11  rosa meio
    if checa_colisao(player.posX,player.posY, 16,16, 245,230, 495, 80 ) then
       player.posY = 700
       player.posX = 0
       love.audio.play(som_toque)
    end

end
