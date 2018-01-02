local anim8 = require "anim8.anim8"

require "functions/personagem"
require "functions/fase_tres/threefase"
require "functions/fase_tres/barramento_fase_three"

function threefase_load( )
	
	-- personagem
	player_load()
	-- personagem

	-- background
	fundo = love.graphics.newImage("image/maze_three.jpg")
	planoDeFundo = {
	x = 0,
	y = 0,
	}
	-- background

	--portal
	imgPortal = love. graphics. newImage('image/portal.png')
	portal = {
	x = 900,
	y =  100,
	}
	--portal

	-- contagem regressiva
	relogy = 100
	print_relogy = 0 
	-- contagem regressiva

	-- game over
	estaVivo = true
	gameOver = false
	transparencia = 0
	imgGameOver = love.graphics.newImage('image/mazeunicorn_gameover.jpg')
	-- game over

end

function threefase_update( dt )

	--movimento do personagem
	   player_update(dt)
    --movimento do personagem

    -- colisao
    	fase_three_colisao_update(dt)
    -- colisao


	-- relogio
		relogy = relogy - dt
		print_relogy = math.floor(relogy)
	-- relogio


    -- funcao mudanca para fase 4
    function four_fase()
		estadoJogo = "four_fase"
		fourfase_load( )
	end
	-- funcao mudanca para fase 4


	function gameOver()
		estadoJogo = "gameOver"
		gameOver_load(  )
	end
end

function threefase_draw( )

	-- fundo
	--love.graphics.setColor(84, 186, 44)
	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- fundo
	
	-- desenho do labirinto
	labirinto_fase_three_draw()
	-- desenho do labirinto 

	-- portal
	love.graphics.draw(imgPortal, portal.x, portal.y)
	-- portal

	-- personagem
	player_draw ()
	-- personagem

	-- relogy
	love.graphics.setColor(226, 4, 4)
	love.graphics.print('tempo restante: ' .. print_relogy, 400, 0 )
	-- relogy


	-- tela game over
	if relogy <=  0 then
		gameOver()
	end
	-- tela game over
end
