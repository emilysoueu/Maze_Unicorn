require "functions/rectangle"

function win_load(  )
	-- posicao mouse
	mx = 0
  	my = 0
  	-- posicao mouse

  	-- botoes

  	menu = {
  	x = 13, -- pos x
  	y = 527, -- pos y
  	width = 175,  -- largura
  	height = 53, -- altura
  }

  	sair = {
  	x = 340,  -- pos x
  	y = 604, --pos y
  	width = 135,--largura
  	height = 52, -- altura
  }
  	-- botoes

	-- background

	fundo = love.graphics.newImage ("image/mazeunicorn_win.jpg")
	planoDeFundo = {
	x = 0,
	y = 0,
	}
	transparencia = 100
	-- background

  -- som fim  do jogo
	som_win = love.audio.newSource ("sound/sound_win.mp3")
	som_win : play ()
	som_win : setLooping (true)
	-- som fim  do jogo
	
end

function win_update(dt)
	function love.mousepressed(x, y, button)
		if button == 1 then
			mx = x
			my = y
			if toqueretangulo(mx,my,menu.x,menu.y,menu.width,menu.height)  then -- volta para o menu
				menu() 
			end
			if toqueretangulo(mx, my, sair.x,sair.y,sair.width,sair.height ) and estadoJogo == "win" then -- sair do game
				love.event.push("quit")
			end
		end
	end

	function menu()
		estadoJogo ="menu" -- fase 1
		menu_load()
	end
end


function win_draw( )
	-- background
	 love.graphics.setColor(255,255,255)
	 love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- background
end

function win( )
	if estadoJogo == 'win' then 
	 	love. graphics.setColor(255,255,255,transparencia * dt )
	 	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	end
end