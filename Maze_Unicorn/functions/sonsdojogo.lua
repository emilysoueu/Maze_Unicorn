function sound(  )
	if estadoJogo == "menu" then
		som_menu = love.audio.newSource ("sound/musica.mp3") 
		som_menu : play ()
		som_menu : setLooping (true)
	elseif estadoJogo == "instruction" then
		som_menu = love.audio.newSource ("sound/musica.mp3") 
		som_menu : play ()
		som_menu : setLooping (true)
	elseif estadoJogo == "one_fase" then
		som_menu = love.audio.newSource ("sound/musica.mp3") 
		som_menu : play ()
		som_menu : setLooping (true)
		
	elseif estadoJogo == "two_fase" then
		som_menu = love.audio.newSource ("sound/musica.mp3") 
		som_menu : play ()
		som_menu : setLooping (true)
		
	elseif estadoJogo == "three_fase" then
		som_menu = love.audio.newSource ("sound/musica.mp3") 
		som_menu : play ()
		som_menu : setLooping (true)
		
	elseif estadoJogo == "four_fase" then
		som_menu = love.audio.newSource ("sound/musica.mp3") 
		som_menu : play ()
		som_menu : setLooping (true)
	elseif estadoJogo == "win" then
		som_menu : stop ()
		som_win = love.audio.newSource ("sound/sound_win.mp3")
		som_win : play ()
		som_win : setLooping (true)
	elseif estadoJogo == "gameOver" then
		som_menu : stop ()
		som_gOver = love.audio.newSource ("sound/sound_gameover.mp3")
		som_gOver : play ()
	 end
end