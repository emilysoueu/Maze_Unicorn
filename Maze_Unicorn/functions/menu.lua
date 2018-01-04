require "functions/rectangle" -- funcao para toque do mouse
--require "functions/sonsdojogo"

function menu_load()
	-- posicao mouse
	mx = 0
  	my = 0
  	-- posicao mouse

	-- background

	fundo = love.graphics.newImage ("image/menu_one.jpg")

	planoDeFundo = {
	x = 0,
	y = 0,
	}
	-- background

	------ botoes
	-- play
	start = {}
		 x_s = 410 -- posicao x
		 y_s = 380 -- posicao y
		 height_s = 97 -- altura
		 width_s = 260 -- largura
	-- sair
	 exit = {}
		 x_e = 770 -- posicao x
		 y_e = 622  -- posicao y
		 height_e = 220 -- altura
		 width_e = 100 -- largura
	-- sair

	--instrucoes
	 instruction = {}
		 x_i = 36
		 y_i = 620
		 height_i = 400 -- altura
		 width_i = 60 -- largura
	-----botoes
	
	--sound ()
	
end


function menu_update(dt)
	

	





	-- menu com teclas
	if love.keyboard.isDown('p') and estadoJogo == "menu" then -- fase 1
				one_fase()
	end
	if love.keyboard.isDown('i') and estadoJogo == "menu" then -- instrucoes
				instruction()
	end
	if love.keyboard.isDown('s') and estadoJogo == "menu" then -- sair do game
				love.event.push("quit")
	end
	-- menu com teclas

	function love.mousepressed(x, y, button)
		if button == 1 then
			mx = x
			my = y
			if toqueretangulo(mx,my,x_i,y_i,width_i,height_i) and estadoJogo == "menu" then -- fase 1
				instruction()
			end
			if toqueretangulo(mx, my, x_s, y_s,width_s,height_s) and estadoJogo == "menu" then -- instrucoes
				one_fase()
			end
			if toqueretangulo(mx, my, x_e, y_e,width_e,height_e ) and estadoJogo == "menu" then -- sair do game
				love.event.push("quit")
			end
		end
	end
end




function menu_draw ()


	-- background
	 love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- background

end

-- funcoes para mudanca de fase
function one_fase()
	estadoJogo ="one_fase" -- fase 1
	onefase_load()
end

function instruction ()
	estadoJogo = "instruction" -- instrucoes
	instruction_load ()
end


 