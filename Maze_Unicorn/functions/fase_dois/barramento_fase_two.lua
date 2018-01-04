
function fase_two_colisao_update(dt)
    --
 function checa_colisao(x1,y1,w1,h1, x2,y2,w2,h2)
        return x1 < x2+w2 and
               x2 < x1+w1 and
               y1 < y2+h2 and
               y2 < y1+h1
 end
  
  
   -- colisão

  -- CODIGO PARA REPULSÃO DO PLAYER AO DETECTAR CONTATO--
  -- 1 amarelo
  if checa_colisao(player.posX, player.posY,16,16, 0,   0, 80, 650 ) then
        player.posY = 700
        player.posX = 0 
        love.audio.play(som_toque)
    end


    -- 2 vermelho
      if checa_colisao(player.posX, player.posY,16,16, 75,  0, 1200, 60 ) then
        player.posY = 700
        player.posX = 0 
        love.audio.play(som_toque)
    end

    -- 3 branco

  if checa_colisao(player.posX, player.posY,16,16, 75,  525, 805, 80 ) then
       player.posY = 700
        player.posX = 0 
        love.audio.play(som_toque)
    end

    -- 4 azul
    if checa_colisao(player.posX, player.posY,16,16, 800,  250, 80, 320 ) then
        player.posY = 700
        player.posX = 0
        love.audio.play(som_toque)
    end


    -- 5  verde
    if checa_colisao(player.posX, player.posY,16,16, 150,  650, 1200, 80  ) then
        player.posY = 700
        player.posX = 0 
        love.audio.play(som_toque)
    end


    -- 6  rosa

    if checa_colisao(player.posX, player.posY,16,16, 930,  125, 100, 600) then
        player.posY = 700
        player.posX = 0 
        love.audio.play(som_toque)
    end


    -- 7  azul ciano

    if checa_colisao(player.posX, player.posY,16,16,150, 420, 329.5, 60) then
         player.posY = 700
        player.posX = 0
        love.audio.play(som_toque)
    end


    -- 8  laranja

    if checa_colisao(player.posX, player.posY,16,16, 220,  125, 1000, 80  ) then
        player.posY = 700
        player.posX = 0 
        love.audio.play(som_toque) 
    end


    -- 9  verde neon

    if checa_colisao(player.posX, player.posY,16,16, 150,  125, 80, 353 ) then
        player.posY = 700
        player.posX = 0  
        love.audio.play(som_toque)
    end

    -- 10 cinza

if checa_colisao(player.posX, player.posY,16,16,400,  250, 80, 200 ) then
        player.posY = 700
        player.posX = 0
        love.audio.play(som_toque)
    end


    -- 11  rosa meio
    if checa_colisao(player.posX, player.posY,16,16,600,  250, 280, 80 ) then
       player.posY = 700
        player.posX = 0 
        love.audio.play(som_toque)
    end

      -- 12  roxo
    if checa_colisao(player.posX, player.posY,16,16,529.5,  250, 80, 200 ) then
        player.posY = 700
        player.posX = 0
        love.audio.play(som_toque)
    end
end
