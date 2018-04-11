local anim8 = require "anim8.anim8"

require "functions/personagem"
require "functions/inimigo" -- inimigo
require "functions/fase_quatro/fourfase"
require "functions/fase_quatro/barramento_fase_four"
require "functions/colisao" -- colisao


function fourfase_load(  )

	-- bonus
	arco = love.graphics.newImage ('image/rainbow.png')
    rainbown = {
    {x = 300,y = 400}
  }
   -- bonus

   -- personagem
	player_load()
	inimigo_load ()
	-- personagem

	-- imagens	
	--portal
	imgPortal = love. graphics. newImage('image/portalfim.png')
	portal = {
	x = 350,
	y =  70,
	}
	-- fase
	imgFase = love. graphics.newImage('image/four.png')
	fase = {
	x = 500,
	y =  0,
	}
	--vidas
	vida = {
	img = love.graphics.newImage ('image/vida.png'),
	x = 950,
	y =650,
	}
	-- background
	fundo = love.graphics.newImage("image/ju3.jpg")
	planoDeFundo = {
	x = 0,
	y = 40,
	}
	
	-- sons
	som_portal = love.audio.newSource ("sound/portal.wav",'static')
	som_toque = love.audio.newSource ("sound/toque.wav",'static')
	rainbow =  love.audio.newSource ("sound/rainbow.wav",'static')
	vidas =  love.audio.newSource ("sound/escudo.wav",'static')
	

	-- contagem regressiva
	relogy = 35
	print_relogy = 0 
	pontos = 15

	-- contagem regressiva
end

function fourfase_update( dt )

	for i, v in pairs(rainbown) do
    	if  checa_colisao(inimigo.posX, inimigo.posY,32, 32, v.x, v.y, 10, 10) then
	      print(true)
	      love.audio.play(rainbow)
	      pontos = pontos - 1
	      v.delete = true -- perguntar
	      --table.remove(block,i)
	      newRaibown = {x = math.random(0,900), y = math.random(80, 590)}
	      table.insert(rainbown,newRaibown)
    	else
     	 print(false)
    	end
  end

  for i = #rainbown , 1, -1 do
    if rainbown[i].delete then
      table.remove(rainbown, i)
    end
  end

	--movimento do personagem
	player_update(dt)
	inimigo_update (dt)
    --movimento do personagem

    -- colisao
    fase_four_colisao_update(dt)
    -- colisao

	if checa_colisao(player.posX, player.posY,16,16, portal.x,portal.y, 16, 16)  then
		love.audio.play(som_portal)
        win()
    end

 	-- relogio
		relogy = relogy - dt
		print_relogy = math.floor(relogy)
	-- relogio

	if pontos <= 0 and checa_colisao(player.posX,player.posY,16,16,inimigo.posX,inimigo.posY , 32, 32) then
    	gameOver ()
    end

     -- tela game over
	if relogy <=  0 then
		gameOver()
	end
	-- tela game over

    function win()
		estadoJogo = "win"
		win_load(  )
	end


	function gameOver()
		estadoJogo = "gameOver"
		gameOver_load(  )
	end
end

function fourfase_draw( )

	-- fundo
	love.graphics.setBackgroundColor (255, 255, 255)
	love.graphics.setColor(162, 249, 235)
	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- fundo
	
	-- desenho do labirinto
	labirinto_fase_four_draw()
	-- desenho do labirinto

	-- portal
	love. graphics.setColor(255,255,255) -- deixr as cores originais da imagem
	love.graphics.draw(imgPortal, portal.x, portal.y)
	-- portal

	-- fase
	love. graphics.setColor(255,255,255) -- deixr as cores originais da imagem
	love.graphics.draw(imgFase, fase.x, fase.y)
	-- fase

	-- vidas
	if pontos <= 0 then
		love.graphics.draw(morte.img,morte.x,morte.y) 
	else
		love.graphics.draw(vida.img, vida.x, vida.y)
	end

	if pontos == 0 then 
		love.audio.play(vidas)
	end
	-- vidas


	-- relogy
	if print_relogy >=  2  then 
		love.graphics.setColor(247, 121, 238)
		love.graphics.setFont (numeros)
		love.graphics.print('tempo restante: ' ..  print_relogy  .. ' segundos', 680, 30 )
	elseif print_relogy < 2 then 
		love.graphics.setColor(247, 121, 238)
		love.graphics.setFont (numeros)
		love.graphics.print('tempo restante: ' ..  print_relogy  .. ' segundo', 680, 30 )
	end
	-- relogy

	-- fase
	--love.graphics.setColor(247, 121, 238)
	love.graphics.setFont (palavras)
	love.graphics.print ('Fase  ' , 400,30)
	-- fase

	-- pontuacao
	love.graphics.setColor(247, 121, 238)
	love.graphics.setFont (palavras)
	love.graphics.print ('pontos ' .. pontos, 50,30)
	--pontuacao

	-- personagem
	player_draw ()
	inimigo_draw ()
	-- personagem 

	--rainbow 
  for i, v in pairs(rainbown) do
    love.graphics.draw(arco, v.x, v.y)
  end
  -- rainbow
end

function four_fase ()
	if estadoJogo == 'four_fase' then 
		love. graphics.setColor(255,255,255, (0 * dt) ) -- deixr as cores originais da imagemz
		love.graphics.draw(imgPortal, portal.x, portal.y) -- portal
		love. graphics.setColor(255,255,255, (0 * dt) ) -- deixr as cores originais da imagem
		player_draw ()  								-- personagem
		love. graphics.setColor(255,255,255, (0 * dt) ) -- deixr as cores originais da imagem
		love.graphics.draw(vida.img, vida.x, vida.y)	-- img vida
		love. graphics.setColor(255,255,255, (0 * dt) ) -- deixr as cores originais da imagem
		love.graphics.draw(imgFase, fase.x, fase.y)     -- img fase
	end
end	