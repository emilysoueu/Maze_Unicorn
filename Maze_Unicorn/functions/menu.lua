require "functions/rectangle"
--require "functions/instruction"
--require "instruction/fase_um/one_fase"

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

	-- botoes
	start = {}
		 x_s = 420
		 y_s = 380
		 height_s = 250
		 width_s = 110

	 exit = {}
		 x_e = 740
		 y_e = 610
		 height_e = 220
		 width_e = 100

	 instruction = {}
		 x_i = 40
		 y_i = 620
		 height_i = 400
		 width_i = 60
	--botoes


	-- sons do jogo
	som_colisao = love.audio.newSource ("sound/sound_menu.mp3")
	som_colisao : play ()
	som_colisao : setLooping (true)
	-- sons do jogo
	

end


function menu_update(dt)
	function love.mousepressed(x, y, button)
		if button == 1 then
			mx = x
			my = y
			if toqueretangulo(mx,my,x_i,y_i,height_i,width_i) and estadoJogo == "menu" then
				instruction()
			end
			if toqueretangulo(mx, my, x_s, y_s,width_s,height_s) and estadoJogo == "menu" then
				one_fase()
			end
			if toqueretangulo(mx, my, x_e, y_e,width_e,height_e ) and estadoJogo == "menu" then
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

function one_fase()
	estadoJogo="one_fase"
	onefase_load()
end