require "functions/rectangle"
require "functions/sonsdojogo"


function win_load(  )

	tempo2 = love.timer.getTime()

  tempoTotal = (tempo2 - tempo1)
  segundos = math.floor(tempoTotal)
  minutos  = math.floor((tempoTotal)/60)


    cursor = love.graphics.newImage ("image/cursor2.png")
	love.mouse.setVisible (false)


	-- posicao mouse
	mx = 0
  	my = 0
  	-- posicao mouse

  	-- botoes

  	menU = {
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

	time = love.graphics.newImage ("image/time.jpg")
	timeFundo = {
	x = 0,
	y = 290,
	}
	transparencia = 100

	score = {
	x = 850,
	y = 200,
	imgScore = love.graphics.newImage ("image/pontos.png"),
	}
	transparencia = 100
	p = math.random (1,10)

	-- fonte
	big  = love.graphics.setNewFont ('disney.ttf', 48)


  	sound ()
  	toque = love.audio.newSource ("sound/cursor.wav",'static')
	
	
end

function win_update(dt)

	if love.keyboard.isDown('escape') and estadoJogo == "win" then -- sair do game
				love.event.push("quit")
	end

	function love.mousepressed(x, y, button)
		if button == 1 then
			mx = x
			my = y
			if toqueretangulo(mx,my,menU.x,menU.y,menU.width,menU.height) and estadoJogo == "win"  then -- volta para o menu
				love.audio.play(toque)
				menu()
				som_win : stop () 
			end
			if toqueretangulo(mx, my, sair.x,sair.y,sair.width,sair.height ) and estadoJogo == "win" then -- sair do game
				love.audio.play(toque)
				love.event.push("quit")
			end
		end
	end
end


function win_draw( )
	-- background
	 love.graphics.setColor(255,255,255)
	 love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- background

	love.graphics.setColor(255,255,255)
	love.graphics.draw( time, timeFundo.x, timeFundo.y)

	love.graphics.setColor(255,255,255)
	love.graphics.setFont (numeros)
	love.graphics.print('Seu Tempo : ',25,318)
	love.graphics.setFont (palavras)
   	 if tempoTotal <= 60 then 
  		love.graphics.print(segundos .. ' s ',40,425)
 	elseif tempoTotal > 60 then 
 		love.graphics.print(minutos.. ' m ',40,425)
 	end

 	-- cursor mouse
 	love.graphics.draw(cursor, love.mouse.getX(), love.mouse.getY())

 	-- highscore
 	love.graphics.draw( score.imgScore, score.x, score.y)
 	love.graphics.setColor(68, 191, 188)
 	love.graphics.setFont (big) -- tamanho da fonte
 	if  tempoTotal <= 10 then 
  		love.graphics.print(segundos * 100000 .."."..  p, 810,330)
 	elseif tempoTotal > 10 and tempoTotal <= 40 then 
  		love.graphics.print(segundos * 100000 .."."..  p, 830,330)
  	elseif tempoTotal > 40 and tempoTotal <= 60 then
  		love.graphics.print(segundos * 10000  .."."..  p, 830,330)
  	elseif tempoTotal > 60 and tempoTotal <= 100 then
  		love.graphics.print(segundos * 1000   .."."..  p, 835,330)
  	elseif tempoTotal > 100 and tempoTotal <= 120 then   
  		love.graphics.print(segundos * 150     ..".".. p, 850,330)
  	elseif tempoTotal > 120 and  tempoTotal<= 170 then
  		love.graphics.print(segundos * 100     ..".".. p, 850,330)
  	elseif tempoTotal > 170 and tempoTotal  <= 200 then
  		love.graphics.print(segundos * 50      ..".".. p , 850,330)
  	elseif tempoTotal > 200 and tempoTotal <= 240  then
  		love.graphics.print(segundos * 10   ..".".. p , 850,330)
  	end



end

function win( )
	if estadoJogo == 'win' then 
	 	love. graphics.setColor(255,255,255,transparencia * dt )
	 	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	 	love. graphics.setColor(255,255,255,transparencia * dt )
	 	love.graphics.draw( time, timeFundo.x, timeFundo.y)
	end
end
function menu()
		estadoJogo ="menu" -- fase 1
		menu_load()
	end