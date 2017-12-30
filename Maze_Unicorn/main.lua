-- require ('pasta/pasta/pasta/arquivo')
require "codes/fases/fase_1/onefase"
require "codes/move/movimentos"
require "codes/colisao/barramento_fase_one"


function love.load()
	--personage
	unicorn = {}
	xone = 0
	yone = 560
	--personage
--[[
    -- background
    fundo = love.graphics.newImage("image/3.jpg")
    fundoDois = love.graphics.newImage("image/3.jpg")

    planoDeFundo = {
    x = 0,
    y = 0,
    y2 = 0 - fundo : getHeight ()

    }
    -- background
]]



	-- labirinto fase one
	 labirinto_fase_one()
	-- labirinto fase one
end


function love.update(dt)

    --movimento do personagem
	    move_personage(dt)
    --movimento do personagem

    -- colisao
      fase_one_colisao_update(dt)
    --colisao

end


function love.draw()


--[[
--- background
 love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
 love.graphics.draw( fundoDois, planoDeFundo.x,planoDeFundo.y2 )
-- background
]]
	--love.graphics.rectangle( modo, x, y, largura, altura )


	-- personagem
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", xone,  yone, 32, 32 )
	--personagem



	--desenho do lairinto
	labirinto_fase_one (dt)
	--love.graphics.rectangle( modo, x, y, largura, altura )

end
  
  -- fase_one_colisao.update (dt)


