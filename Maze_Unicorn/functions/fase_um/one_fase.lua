local anim8 = require "anim8.anim8" -- animacao do personagem

require "functions/personagem" -- personagem
require "functions/inimigo" -- inimigo
require "functions/fase_um/onefase" -- desenho do labirinto
require "functions/fase_um/barramento_fase_one" -- detectar colisoes
require "functions/colisao" -- colisao

function onefase_load(  )


	tempo1 = love.timer.getTime() --pra usar no win
	tempo_1 = love.timer.getTime() -- pra usar no game over


	-- bonus
	arco = love.graphics.newImage ('image/rainbow.png')
    rainbown = {
    {x = 300,y = 400}
  }
   -- bonus

   --imagens
	-- personagens
	player_load()
	inimigo_load ()
	--portal
	imgPortal = love.graphics.newImage('image/portal.png')
	portal = {
	x = 640,y =  326.5,
	}
	-- fase
	imgFase = love. graphics.newImage('image/one.png')
	fase = {
	x = 500,y =  0,
	}
	-- vida
	vida = {
	img = love.graphics.newImage ('image/vida.png'),
	x = 950,y =650,
	}
	--morte
	morte = {
	img = love.graphics.newImage ('image/morte.png'),
	x = 950,y =650,
	}
	-- background
	fundo = love.graphics.newImage("image/maze_one.jpg")
	planoDeFundo = {
	x = 0,y = 0,
	}
	-- imagens



   
	-- sons
	som_portal = love.audio.newSource ("sound/portal.wav",'static')
	som_toque = love.audio.newSource ("sound/toque.wav",'static')
	rainbow =  love.audio.newSource ("sound/rainbow.wav",'static')
	vidas =  love.audio.newSource ("sound/escudo.wav",'static')
	

	-- fontes e tamanho
	palavras = love.graphics.setNewFont ('disney.ttf', 32)
	numeros  =  love.graphics.setNewFont ('disney.ttf', 18)
	-- fontes e tamanho

   -- contadores
	-- contagem regressiva
	relogy = 40
	print_relogy = 0
	-- HighScore
	pontos = 15

end

function onefase_update( dt )

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


	--movimento dos personagens
	player_update(dt)
	inimigo_update (dt)
    --movimento dos personagens

    -- colisao
    fase_one_colisao_update(dt)
    -- colisao

    -- relogio
		relogy = relogy - dt
		print_relogy = math.floor(relogy)
	-- relogio

	if checa_colisao(player.posX,player.posY,16,16, portal.x,portal.y, 32, 32) then
		love.audio.play(som_portal)
        two_fase()
    end

    if pontos <= 0 and checa_colisao(player.posX,player.posY,16,16,inimigo.posX,inimigo.posY , 32, 32) then
    	gameOver ()
    end

    -- tela game over
	if relogy <=  0 then
		gameOver()
	end
	-- tela game over

	-- funcao mudanca para fase 2
    function two_fase()
		estadoJogo = "two_fase"
		twofase_load()
		
	end
	-- funcao mudança par fase 2

	-- funcao mudanca para Game Over
	function gameOver()
		estadoJogo = "gameOver"
		gameOver_load( )
	end
	-- funcao mudanca para Game Over
end

function onefase_draw()

	-- fundo
	love.graphics.setColor(255, 255, 255)
	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- fundo

	-- portal
	love.graphics.draw(imgPortal, portal.x, portal.y)
	-- portal

	-- desenho do labirinto
	labirinto_fase_one_draw()
	-- desenho do labirinto

	-- fase
	love.graphics.draw(imgFase, fase.x, fase.y) -- fase com letra de unicornio
	-- fase

	-- vidas
	if pontos <= 0 then
		love.graphics.draw(morte.img,morte.x,morte.y) -- imagem p&b = o fantasma pode matar
	else
		love.graphics.draw(vida.img, vida.x, vida.y)   -- imagem colorida = vida
	end 
	 --  pontos de vida alerta
	if pontos == 1  then 
		love.audio.play(vidas)
	end
	if pontos == 0 then 
		love.audio.stop(vidas)
	end

	-- vidas

	-- relogy
	if print_relogy >=  2  then 
		love.graphics.setColor(247, 121, 238)
		love.graphics.setFont (numeros)
		love.graphics.print('tempo restante: ' ..  print_relogy  .. ' segundos', 680, 50 )
	elseif print_relogy < 2 then 
		love.graphics.setColor(247, 121, 238)
		love.graphics.setFont (numeros)
		love.graphics.print('tempo restante: ' ..  print_relogy  .. ' segundo', 680, 50 )
	end
	-- relogy

	-- pontuacao
	love.graphics.setColor(247, 121, 238)
	love.graphics.setFont (palavras)
	love.graphics.print ('pontos ' .. pontos , 50,50)
	--pontuacao

	-- fase
	love.graphics.setColor(247, 121, 238)
	love.graphics.setFont (palavras)
	love.graphics.print ('Fase  ' , 400,50)
	-- fase

	

	-- personagens
	player_draw ()
	inimigo_draw ()
	-- personagens

	--rainbow 
  for i, v in pairs(rainbown) do
    love.graphics.draw(arco, v.x, v.y)
  end
  -- rainbow

end



