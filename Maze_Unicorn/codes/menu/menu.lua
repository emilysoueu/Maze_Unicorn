
function love.load()

	-- background
	fundo = love.graphics.newImage("imagem/menu_one.jpg")
	fundoDois = love.graphics.newImage("imagem/menu_one.jpg")

	planoDeFundo = {
	x = 0,
	y = 0,
	y2 = 0 - fundo : getHeight ()

	}
	-- background


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





	-- sons do jogo
	som_colisao = love.audio.newSource ("sons/sound_menu.mp3")
	som_colisao : play ()
	som_colisao : setLooping (true)
	-- sons do jogo


end


function love.update(dt)

end


function love.draw ()


	-- play - red
	--love.graphics.setColor(244, 66, 185)
	love.graphics.rectangle("fill", x_s, y_s, height_s, width_s )
	-- play - red

	-- exit - pink
	--love.graphics.setColor(244, 66, 185)
	love.graphics.rectangle("fill", x_e, y_e, height_e, width_e )
	-- exit - pink


	-- instruction - yellow
    --love.graphics.setColor(244, 66, 185)
	love.graphics.rectangle("fill", x_i, y_i, height_i, width_i )
	-- instruction - yellow


	-- background
	 love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	 love.graphics.draw( fundoDois, planoDeFundo.x,planoDeFundo.y2 )
	-- background


end
