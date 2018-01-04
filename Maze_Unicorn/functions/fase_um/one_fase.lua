local anim8 = require "anim8.anim8" -- animacao do personagem

require "functions/personagem" -- personagem
require "functions/inimigo" -- inimigo
require "functions/fase_um/onefase" -- desenho do labirinto
require "functions/fase_um/barramento_fase_one" -- detectar colisoes
require "functions/colisao" -- colisao
require "functions/relogio"


function onefase_load(  )

	-- bonus
	arco = love.graphics.newImage ('image/rainbow.png')
    rainbown = {
    {x = 300,y = 400}
  }
   -- bonus

	-- personagens
	player_load()
	inimigo_load ()
	-- personagens

	--portal
	imgPortal = love.graphics.newImage('image/portal.png')
	portal = {
	x = 640,y =  326.5,
	}
	--portal

	-- fase
	imgFase = love. graphics.newImage('image/one.png')
	fase = {
	x = 500,y =  0,
	}
	-- fase

	vida = {
	img = love.graphics.newImage ('image/vida.png'),
	x = 700,y =600,
	}

	-- background
	fundo = love.graphics.newImage("image/maze_one.jpg")
	planoDeFundo = {
	x = 0,y = 0,
	}
	-- background

	-- contagem regressiva
	relogy = 180
	print_relogy = 0
	-- contagem regressiva

	-- HighScore
	pontos = 15
	-- HighScore

	-- fontes e tamanho
	palavras = love.graphics.setNewFont ('disney.ttf', 32)
	numeros  =  love.graphics.setNewFont ('disney.ttf', 18)
	-- fontes e tamanho

	-- sons
	som_portal = love.audio.newSource ("sound/portal.wav",'static')
	som_toque = love.audio.newSource ("sound/toque.wav",'static')
	som_trote = love.audio.newSource ("sound/trote.mp3")

	time_load ()


end

function onefase_update( dt )

	for i, v in pairs(rainbown) do
    	if  checa_colisao(inimigo.posX, inimigo.posY,32, 32, v.x, v.y, 10, 10) then
	      print(true)
	      pontos = pontos - 1
	      v.delete = true -- perguntar
	      --table.remove(block,i)
	      newRaibown = {x = math.random(790), y = math.random(590)}
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

	time_update(dt)

	--movimento dos personagens
	player_update(dt)
	inimigo_update (dt)
    --movimento dos personagens

    -- colisao
    --fase_one_colisao_update(dt)
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
	love.graphics.draw(imgFase, fase.x, fase.y)
	-- fase

	-- vidas
	love.graphics.draw(vida.img, vida.x, vida.y)
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

	-- tela game over
	if relogy <=  0 then
		gameOver()
	end
	-- tela game over

	-- personagens
	player_draw ()
	inimigo_draw ()
	-- personagens

	--rainbow 
  for i, v in pairs(rainbown) do
    love.graphics.draw(arco, v.x, v.y)
  end
  -- rainbow
	--time_draw ()
end



