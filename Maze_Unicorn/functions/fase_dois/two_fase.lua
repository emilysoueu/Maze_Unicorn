local anim8 = require "anim8.anim8"

require "functions/personagem"
require "functions/fase_dois/twofase"
require "functions/fase_dois/barramento_fase_two"
require "functions/colisao" -- colisao
require "functions/relogio"



function twofase_load(  )

	time_load ()
	
	-- personagem
	player_load()
	-- personagem

	--portal
	imgPortal = love. graphics.newImage('image/portal.png')
	portal = {
	x = 870,
	y =  80,
	}
	--portal

	-- fase
	imgFase = love. graphics.newImage('image/two.png')
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

	-- background
	fundo = love.graphics.newImage("image/maze_two.png")
	planoDeFundo = {
	x = 0,
	y = 0,
	}
	-- background

	-- sons
	som_portal = love.audio.newSource ("sound/portal.wav",'static')
	som_toque = love.audio.newSource ("sound/toque.wav",'static')


	-- contagem regressiva
	relogy = 60
	print_relogy = 0 
	-- contagem regressiva
end

function twofase_update( dt )

	time_update(dt)

	--movimento do personagem
	player_update(dt)
    --movimento do personagem

    -- colisao
    --fase_two_colisao_update(dt)
    -- colisao

    --12 portal
   if checa_colisao(player.posX, player.posY,16,16, portal.x,portal.y, 16, 16)  then
   		love.audio.play(som_portal)
        three_fase()
    end

 	-- relogio
	relogy = relogy - dt
	print_relogy = math.floor(relogy)
	-- relogio


	-- funcao mudanca para fase 3
    function three_fase()
		estadoJogo = "three_fase"
		threefase_load(  )
	end
	-- funcao mudanca para fase 3

	function gameOver()
		estadoJogo = "gameOver"
		gameOver_load(  )
	end

end

function twofase_draw( )

	-- fundo
	love.graphics.setColor(247, 249, 104)
	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- fundo
	
	-- desenho do labirinto
	labirinto_fase_two_draw()
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

	-- pontuacao
	love.graphics.setColor(247, 121, 238)
	love.graphics.setFont (palavras)
	love.graphics.print ('pontos ' .. (print_relogy * 100 ), 50,30)
	--pontuacao

	-- fase
	love.graphics.setColor(247, 121, 238)
	love.graphics.setFont (palavras)
	love.graphics.print ('Fase  ' , 400,30)
	-- fase

	-- personagem
	love. graphics.setColor(255,255,255) -- deixr as cores originais da imagem
	player_draw ()
	-- personagem

	time_draw ()
end

function two_fase ()
	if estadoJogo == 'two_fase' then 
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



