-- require ('pasta/pasta/pasta/arquivo')

require "codes/move/movimentos"
--require "codes/menu"
require "codes/colisao/barramento_fase_one"
require "codes/fases/fase_1/onefase"
--require "codes/fases/fase_2/twofase"
--require "codes/fases/fase_3/threfase"
--require "codes/fases/fase_4/fourfase"



function love.load()
	--estadoJogo = "menu"
	--menu_load()



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
     --fase_two_colisao_update(dt)
    -- fase_thre_colisao_update(dt)
     --fase_four_colisao_update(dt)
    --colisao

end


function love.draw()





	--love.graphics.rectangle( modo, x, y, largura, altura )

	-- plano de fundo fase 1
	--love.graphics.setColor(244, 66, 185)
	--love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	--plano de fundo fase 1


	-- personagem
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", xone,  yone, 32, 32 )
	--personagem



	--desenho do lairinto
	labirinto_fase_one (dt)

	--love.graphics.rectangle( modo, x, y, largura, altura )



end
  
  -- fase_one_colisao.update (dt)


