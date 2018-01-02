-- require ('pasta/pasta/pasta/arquivo')
require "functions/menu"
require "functions/instruction"
require "functions/fase_um/one_fase"
require "functions/fase_dois/two_fase"
require "functions/fase_tres/three_fase"
require "functions/fase_quatro/four_fase"
require "functions/win"
require "functions/gameOver"



function love.load()
	estadoJogo = "menu"
	menu_load()
end


function love.update(dt)

	if estadoJogo == "menu" then
	   menu_update(dt)
	elseif estadoJogo == "instruction" then
		   instruction_update(dt)
	elseif estadoJogo == "one_fase" then
		onefase_update(dt)
	elseif estadoJogo == "two_fase" then
		twofase_update(dt)
	elseif estadoJogo == "three_fase" then
		threefase_update(dt)
	elseif estadoJogo == "four_fase" then
		fourfase_update(dt)
	elseif estadoJogo == "win" then
		win_update(dt)
	elseif estadoJogo == "gameOver" then
		gameOver_update(dt)
    end
    
end


function love.draw()

	if estadoJogo == "menu" then
		menu_draw()
	elseif estadoJogo == "instruction" then
		instruction_draw()
	elseif estadoJogo == "one_fase" then
		onefase_draw()
	elseif estadoJogo == "two_fase" then
		twofase_draw()
	elseif estadoJogo == "three_fase" then
		threefase_draw()
	elseif estadoJogo == "four_fase" then
		fourfase_draw()
	elseif estadoJogo == "win" then
		win_draw()
	elseif estadoJogo == "gameOver" then
		gameOver_draw()
	 end
end
  
