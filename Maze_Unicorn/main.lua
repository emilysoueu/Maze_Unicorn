-- require ('pasta/pasta/pasta/arquivo')
require "codes/fases/fase_1/onefase"
require "codes/move/movimentos"
require "codes/collision/detectar_collision"

function love.load()
--personage
unicorn = {}
xone = 300
yone = 300
--personage
end


function love.update(dt)
    --desenho do lairinto
    labirinto_fase_one (dt)
    --desenho do labirinto
     
    --movimento do personagem 
	move_personage(dt)
    --movimento do personagem 

    --colisão fase 1
    checa_collision_fase_one(dt)
    --colisão fase 1
end    


function love.draw()
--love.graphics.rectangle( modo, x, y, largura, altura )    
-- personagem   
love.graphics.setColor(255, 255, 255)
love.graphics.rectangle("fill", xone,  yone, 32, 32 )
--personagem
-- labirinto
labirinto_fase_one ()
end
