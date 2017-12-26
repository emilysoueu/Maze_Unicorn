-- require ('pasta/pasta/pasta/arquivo')
require "functions/movimentos"
require "functions/menu"
require "functions/fase_um/one_fase"
require "functions/fase_dois/two_fase"
require "functions/instruction"



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
    end
    
end


function love.draw()

		if   estadoJogo == "menu" then
			  menu_draw()
		elseif estadoJogo == "instruction" then
		      instruction_draw()
		elseif estadoJogo == "one_fase" then
			  onefase_draw()
		elseif estadoJogo == "two_fase" then
			  twofase_draw()
	    end
end
  
