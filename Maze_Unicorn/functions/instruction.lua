require "functions/rectangle"

function instruction_load( )

	mx, my=0, 0
	
	-- background
	fundo = love.graphics.newImage("image/untimotaçao.jpg")
	planoDeFundo = {
	x = 0,y = 0,
	}
	-- backgroun

	cursor = love.graphics.newImage ("image/cursor2.png")
	love.mouse.setVisible (false)

	sound ()
	toque = love.audio.newSource ("sound/cursor.wav",'static')
end


function instruction_update( dt )

	if love.keyboard.isDown('m') and estadoJogo == "orientacao" then
				menu()
	end
	if love.keyboard.isDown('escape') and estadoJogo == "orientacao" then -- sair do game
				love.event.push("quit")
	end


	function love.mousepressed( x, y, button )
		if button == 1 then
			mx = x
			my = y
			if toqueretangulo(mx, my, 60, 580, 200, 80) and estadoJogo == "orientacao" then -- Detecção de toque apenas quando ocorrer click do mouse
             love.audio.play(toque)
             menu () --Havendo click na Coordenadas do botão back, volta para o menu
			end
			
	   end
	end

end

function instruction_draw( )

	love.graphics.draw(fundo,planoDeFundo.x,planoDeFundo.y)

	love.graphics.draw(cursor, love.mouse.getX(), love.mouse.getY())
end

function menu()
	estadoJogo = "menu"
	menu_load()
end