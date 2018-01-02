local anim8 = require "anim8.anim8" -- animacao do personagem

require "functions/personagem"
require "functions/fase_um/onefase"
require "functions/fase_um/barramento_fase_one"
require "functions/colisao"

function onefase_load(  )

	-- personagem
	player_load()
	-- personagem

	--portal
	imgPortal = love. graphics. newImage('image/portal.png')
	portal = {
	x = 640,
	y =  326.5,
	}
	--portal

	-- background
	fundo = love.graphics.newImage("image/maze_one.jpg")
	planoDeFundo = {
	x = 0,
	y = 0,

	}
	-- background

	-- contagem regressiva
	relogy = 30
	print_relogy = 0
	-- contagem regressiva

end

function onefase_update( dt )

	--movimento do personagem
	player_update(dt)
    --movimento do personagem

    -- colisao
    fase_one_colisao_update(dt)
    -- colisao

    -- relogio
		relogy = relogy - dt
		print_relogy = math.floor(relogy)
	-- relogio


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

function onefase_draw(  )


	-- fundo
	love.graphics.setColor(244, 66, 185)
	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- fundo


	-- portal
	love.graphics.draw(imgPortal, portal.x, portal.y)
	-- portal

	-- desenho do labirinto
	labirinto_fase_one_draw()
	-- desenho do labirinto

	-- relogy
	love.graphics.setColor(247, 212, 14)
	love.graphics.print('tempo restante: ' .. print_relogy, 400, 0 )
	-- relogy

	-- tela game over
	if relogy <=  0 then
		gameOver()
	end
	-- tela game over

	-- personagem
	player_draw ()
	-- personagem


end


