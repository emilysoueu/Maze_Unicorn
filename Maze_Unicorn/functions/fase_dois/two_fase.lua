require "functions/movimentos"
require "functions/fase_dois/twofase"
require "functions/fase_dois/barramento_fase_two"

function twofase_load(  )
	
	-- personagem
	jogador1 = {}
	xone = 0
	yone = 600
	-- personagem

	-- background
	fundo = love.graphics.newImage("image/maze_two.png")

	planoDeFundo = {
	x = 0,
	y = 0,

	}
	-- background


end

function twofase_update( dt )

	--movimento do personagem
	    move_personage(dt)
    --movimento do personagem

    -- colisao
    fase_two_colisao_update(dt)
    -- colisao
end

function twofase_draw( )

	-- fundo
	love.graphics.setColor(244, 66, 185)
	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- fundo

	-- personagem
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", xone,  yone, 32, 32 )
	-- personagem

	
	-- desenho do labirinto
	labirinto_fase_two_draw()
	-- desenho do labirinto 
end
