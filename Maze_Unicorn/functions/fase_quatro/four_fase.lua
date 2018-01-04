local anim8 = require "anim8.anim8"

require "functions/personagem"
require "functions/fase_quatro/fourfase"
require "functions/fase_quatro/barramento_fase_four"
require "functions/colisao" -- colisao


function fourfase_load(  )
	
	-- background
	fundo = love.graphics.newImage("image/maze_four.jpg")
	planoDeFundo = {
	x = 0,
	y = 40,
	}
	-- background

	-- personagem
	player_load()
	-- personagem

	-- fase
	imgFase = love. graphics.newImage('image/four.png')
	fase = {
	x = 500,
	y =  0,
	}
	-- fase

	--vidas
	vida = {
	img = love.graphics.newImage ('image/vida.png'),
	x = 700,
	y =600,
	}
	-- vias


	--portal
	imgPortal = love. graphics. newImage('image/portal.png')
	portal = {
	x = 400,
	y =  300,
	}
	--portal

	-- sons
	som_portal = love.audio.newSource ("sound/portal.wav",'static')
	som_toque = love.audio.newSource ("sound/toque.wav",'static')


	-- contagem regressiva
	relogy = 60
	print_relogy = 0 
	-- contagem regressiva
end

function fourfase_update( dt )

	--movimento do personagem
	player_update(dt)
    --movimento do personagem

    -- colisao
   -- fase_four_colisao_update(dt)
    -- colisao
	if checa_colisao(player.posX, player.posY,16,16, portal.x,portal.y, 16, 16)  then
		love.audio.play(som_portal)
        win()
    end

 	-- relogio
		relogy = relogy - dt
		print_relogy = math.floor(relogy)
	-- relogio

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
	love.graphics.setColor(255, 255, 255)
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
	love. graphics.setColor(255,255,255 ) -- deixr as cores originais da imagem
	love.graphics.draw(vida.img, vida.x, vida.y)
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
	love.graphics.print ('pontos ' .. (print_relogy * 100 ), 50,30)
	--pontuacao

	-- personagem
	player_draw ()
	-- personagem 

	function four_fase ()
	if estadoJogo == 'four_fase' then 
		love. graphics.setColor(255,255,255, (0 * dt) ) -- deixr as cores originais da imagem
		love.graphics.draw(imgPortal, portal.x, portal.y) -- portal
		love. graphics.setColor(255,255,255, (0 * dt) ) -- deixr as cores originais da imagem
		player_draw ()  								-- personagem
		love. graphics.setColor(255,255,255, (0 * dt) ) -- deixr as cores originais da imagem
		love.graphics.draw(vida.img, vida.x, vida.y)	-- img vida
		love. graphics.setColor(255,255,255, (0 * dt) ) -- deixr as cores originais da imagem
		love.graphics.draw(imgFase, fase.x, fase.y)     -- img fase
	end
end


	
	
end
