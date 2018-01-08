-- require ('pasta/pasta/pasta/arquivo')
require "functions/menu" 				 	 -- menu
require "functions/instruction" 		     -- instrução
require "functions/fase_um/one_fase" 	 	 -- fase 1 
require "functions/fase_dois/two_fase" 		 -- fase 2
require "functions/fase_tres/three_fase"	 -- fase 3
require "functions/fase_quatro/four_fase"	 -- fase 4
require "functions/win" 					 -- tela para venceu
require "functions/gameOver" 				 -- tela perdeu



function love.load()
	estadoJogo = "menu"
	menu_load()
end


function love.update(dt)

	if estadoJogo == "menu" then                --menu
	   menu_update(dt)							-- menu
	elseif estadoJogo == "orientacao" then		-- instrução
		   instruction_update(dt)				-- instrução
	elseif estadoJogo == "one_fase" then  		-- fase 1
		onefase_update(dt)						-- fase 1
	elseif estadoJogo == "two_fase" then		-- fase 2
		twofase_update(dt)						-- fase 2
	elseif estadoJogo == "three_fase" then		-- fase 3
		threefase_update(dt)					-- fase 3
	elseif estadoJogo == "four_fase" then 		-- fase 4
		fourfase_update(dt)						-- fase 4
	elseif estadoJogo == "win" then 			-- vencer
		win_update(dt)							-- vencer
	elseif estadoJogo == "gameOver" then		-- perder
		gameOver_update(dt)						-- perder
    end
    
end


function love.draw()

	if estadoJogo == "menu" then			-- menu
		menu_draw()							-- menu
	elseif estadoJogo == "orientacao" then 	-- instrução
		instruction_draw()					-- instrução
	elseif estadoJogo == "one_fase" then	-- fase 1
		onefase_draw()						-- fase 1
	elseif estadoJogo == "two_fase" then	-- fase 2
		twofase_draw()						-- fase 2
	elseif estadoJogo == "three_fase" then 	-- fase 3
		threefase_draw()					-- fase 3
	elseif estadoJogo == "four_fase" then 	-- fase 4
		fourfase_draw()						-- fase 4
	elseif estadoJogo == "win" then			-- vencer
		win_draw()							-- vencer
	elseif estadoJogo == "gameOver" then	-- perder
		gameOver_draw()						-- perder
	 end
end
  
