require "functions/rectangle"

function instruction_load( )

	mx, my=0, 0
		-- background
	fundo = love.graphics.newImage("image/instruction.jpg")

	planoDeFundo = {
	x = 0,
	y = 0,
	}
	-- background

end


function instruction_update( dt )

	if love.keyboard.isDown('m') and estadoJogo == "instruction" then
				menu_load()
	end


	function love.mousepressed( x, y, button )
		if button == 1 then
			mx = x
			my = y
			if toqueretangulo(mx, my, 60, 580, 200, 80) then -- Detecção de toque apenas quando ocorrer click do mouse
        menu() --Havendo click na Coordenadas do botão back, volta para o menu
			end
		end
	end
	

end

function instruction_draw( )

	-- plano de fundo fase 1
	--love.graphics.setColor(244, 66, 185)
	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	--plano de fundo fase 1
	love.graphics.rectangle("fill", 60,  580, 200, 80 )
end

