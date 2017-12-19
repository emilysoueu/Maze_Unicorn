-- require ('pasta/pasta/pasta/arquivo')
require "codes/fases/fase_1/onefase"
require "codes/move/movimentos"
--require "codes/collision/ checa_colisao_fase_one"
--require "codes/collision/detectar_collision"
--require "codes/repulsao/paredes"

function love.load()
--personage
unicorn = {}
xone = 0
yone = 560
--personage

-- labirinto fase one
 labirinto_fase_one()
-- labirinto fase one
end


function love.update(dt)

    --movimento do personagem
	move_personage(dt)
    --movimento do personagem

	
end


function love.draw()


--love.graphics.rectangle( modo, x, y, largura, altura )


-- personagem
love.graphics.setColor(255, 255, 255)
love.graphics.rectangle("fill", xone,  yone, 32, 32 )
--personagem



-- labirinto


--desenho do lairinto
labirinto_fase_one (dt)
--love.graphics.rectangle( modo, x, y, largura, altura )

end
