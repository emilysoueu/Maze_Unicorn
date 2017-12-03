-- require ('pasta/pasta/pasta/arquivo')
require "codes/fases/fase_1/onefase"

function love.load()

--prsonage
xone = 300
yone = 300

--personage



end

function love.update(dt)
-- movimentar meu personagem pelo labirinto

	if love.keyboard.isDown('right') then
        xone = xone + 100 * dt
    end
    if love.keyboard.isDown('left') then
        xone = xone - 100 * dt
    end
    if love.keyboard.isDown('down') then
        yone = yone + 100 * dt
    end
	if love.keyboard.isDown('up') then
        yone = yone - 100 * dt
    end
    

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
