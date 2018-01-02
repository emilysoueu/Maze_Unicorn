function gameOver_load( )
	-- posicao mouse
	mx = 0
  	my = 0
  	-- posicao mouse

	-- background

	fundo = love.graphics.newImage ("image/mazeunicorn_gameover.jpg")
	planoDeFundo = {
	x = 0,
	y = 0,
	}
	transparencia = 100 
	-- background

  -- som fim do jogo
	som_win = love.audio.newSource ("sound/sound_gameover.mp3")
	som_win : play ()
	som_win : setLooping (false)
	-- som fim do jogo
	
end

function gameOver_update(dt)
	
end
function gameOver_draw( )
	-- background
	 love. graphics.setColor(255,255,255)
	 love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- background
end

function gameOver( )
	if estadoJogo == 'gameOver' then 
	 	love. graphics.setColor(255,255,255,transparencia * dt )
	 	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	end
end