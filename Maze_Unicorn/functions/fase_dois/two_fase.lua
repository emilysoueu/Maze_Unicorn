local anim8 = require "anim8.anim8"

require "functions/personagem"
require "functions/fase_dois/twofase"
require "functions/fase_dois/barramento_fase_two"

function twofase_load(  )
	
	-- personagem
	player_load()
	-- personagem

	--portal
	imgPortal = love. graphics. newImage('image/portal.png')
	portal = {
	x = 870,
	y =  80,
	}
	--portal

	-- background
	fundo = love.graphics.newImage("image/maze_two.png")

	planoDeFundo = {
	x = 0,
	y = 0,

	}
	-- background

	-- contagem regressiva
	relogy = 60
	print_relogy = 0 
	-- contagem regressiva

	-- game over
	estaVivo = true
	gameOver = false
	transparencia = 0
	imgGameOver = love.graphics.newImage('image/mazeunicorn_gameover.jpg')
	-- game over


end

function twofase_update( dt )

	--movimento do personagem
	player_update(dt)
    --movimento do personagem

    -- colisao
    fase_two_colisao_update(dt)
    -- colisao


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
	love.graphics.setColor(247, 212, 14)
	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- fundo
	
	-- desenho do labirinto
	labirinto_fase_two_draw()
	-- desenho do labirinto 

	-- portal
	love.graphics.draw(imgPortal, portal.x, portal.y)
	-- portal

	-- relogy
	love.graphics.setColor(44, 49, 186)
	love.graphics.print('tempo restante: ' .. print_relogy, 400, 0 )
	-- relogy

	-- personagem
	player_draw ()
	-- personagem

	-- tela game over
	if relogy <=  0 then
		gameOver()
	end
	-- tela game over
end
