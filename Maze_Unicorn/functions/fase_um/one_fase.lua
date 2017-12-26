require "functions/movimentos"
require "functions/fase_um/onefase"
require "functions/fase_um/barramento_fase_one"

function onefase_load(  )
	
	-- personagem
	jogador1 = {}
	xone = 0
	yone = 600
	-- personagem

	--porta
	xport = 640 
	yport =  326.5
	--porta

	-- background
	fundo = love.graphics.newImage("image/maze_one.jpg")

	planoDeFundo = {
	x = 0,
	y = 0,

	}
	-- background
end

function onefase_update( dt )

	--movimento do personagem
	    move_personage(dt)
    --movimento do personagem

    -- colisao
   fase_one_colisao_update(dt)
    -- colisao

end

function onefase_draw(  )
	-- fundo
	love.graphics.setColor(244, 66, 185)
	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- fundo

	-- personagem
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", xone,  yone, 32, 32 )
	-- personagem

	
	-- desenho do labirinto
	labirinto_fase_one_draw()
	-- desenho do labirinto 
end

function two_fase()
	estadoJogo = "two_fase"
	twofase_load()
end
