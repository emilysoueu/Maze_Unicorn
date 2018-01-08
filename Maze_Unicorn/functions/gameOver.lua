require "functions/rectangle" -- função para detectar toque do mouse
require "functions/sonsdojogo" -- função para som 



function gameOver_load( )

	tempo_2 = love.timer.getTime() -- tempo final dese que o jogo foi iniciado na fase 1

	tempoTotal = (tempo_2 - tempo_1) -- tempo final - tempo inicial 
  	segundos = math.floor(tempoTotal) -- se o tempo for menor que 60 será mostrado na forma de segundos
    minutos  = math.floor((tempoTotal)/60) -- se o tempo fou maior que 60 será mostrado em minutos

	-- posicao mouse
	mx = 0
  	my = 0
  	-- posicao mouse


	cursor = love.graphics.newImage ("image/cursor2.png") -- mouse de unicornio
	love.mouse.setVisible (false) -- apagar mouse

	-- background
	fundo = love.graphics.newImage ("image/mazeunicorn_gameover.jpg")
	planoDeFundo = {
	x = 0,
	y = 0,
	}
	transparencia = 100 

	score = {
	x = 0,
	y = 0,
	imgScore = love.graphics.newImage ("image/pontos.png"),
	}
	transparencia = 100
	p = math.random (1,10)
	
	-- unicornio do tempo
	time = love.graphics.newImage ("image/time.jpg")
	timeFundo = {
	x = 850,        -- posição x
	y = 0,			-- posição y
	}
	-- botão menu
	menU = {
	x = 40,		-- posição x
	y = 320,	-- posição y
	l = 183,	-- largura
	h = 71,		-- altura
	}
	-- botão sair
	sair = {
	x = 59, 	-- posição x
	y = 465,	-- posição y
	l = 153,	-- largura
	h = 63,		-- altura
	}

	-- fonte
	big  = love.graphics.setNewFont ('disney.ttf', 48)


  	-- som game over baseado no estado do jogo
	sound ()
	toque = love.audio.newSource ("sound/cursor.wav",'static')
	
end

function gameOver_update(dt)

	if love.keyboard.isDown('escape') and estadoJogo == "gameOver" then -- sair do game
				love.event.push("quit")
	end

	function love.mousepressed(x, y, button)
		if button == 1 then
			mx = x
			my = y
			if toqueretangulo(mx, my, menU.x, menU.y, menU.l, menU.h) and estadoJogo == "gameOver" then -- Detecção de toque apenas quando ocorrer click do mouse
	       		love.audio.play(toque)
	        menu() --Havendo click na Coordenadas do botão menu, volta para o menu
			end
			if toqueretangulo(mx, my, sair.x, sair.y, sair.l, sair.h ) and estadoJogo == "gameOver" then -- sair do game
				love.audio.play(toque)			
				love.event.push("quit")
			end
				
		end
	end
end
function gameOver_draw( )
	-- background
	 love. graphics.setColor(255,255,255)
	 love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	
	 -- mouse
	love.graphics.draw(cursor, love.mouse.getX(), love.mouse.getY())
	-- fundo
	love.graphics.setColor(255,255,255)
	love.graphics.draw( time, timeFundo.x, timeFundo.y)

	-- mostrar quanto tempo o jogador passou nos labirintos
	love.graphics.setColor(255,255,255) -- cor branca
	love.graphics.setFont (numeros)  -- tamanho da fonte
	love.graphics.print('Seu Tempo : ',885,28) 
	love.graphics.setFont (palavras) -- tamanho da fonte
   	 if tempoTotal <= 60 then 
  		love.graphics.print(segundos .. ' s ',900,135)
 	elseif tempoTotal > 60 then 
 		love.graphics.print(minutos .. ' m ',900,135)
 	end

 	-- highScore
 	love.graphics.draw( score.imgScore, score.x, score.y)
 	love.graphics.setColor(255,255,255)
 	love.graphics.setFont (big) -- tamanho da fonte
 	if  tempoTotal <= 10 then 
  		love.graphics.print(segundos + 9 .."."..  p, 40,110)
 	elseif tempoTotal <= 40 then 
  		love.graphics.print(segundos + 12 ..".".. p, 40,110)
  	elseif tempoTotal <= 60 then
  		love.graphics.print(segundos + 35  ..".".. p, 40,110)
  	elseif tempoTotal <= 100 then
  		love.graphics.print(segundos  + 68 ..".".. p, 40,110)
  	elseif tempoTotal <= 120 then
  		love.graphics.print(segundos  + 76 .."."..  p, 40,110)
  	elseif tempoTotal <= 170 then
  		love.graphics.print(segundos + 86 .."."..   p, 40,110)
  	elseif tempoTotal <= 200 then
  		love.graphics.print(segundos  + 90 ..".".. p , 40,110)
  	elseif tempoTotal <= 240 then
  		love.graphics.print(segundos + 100 ..".".. p , 20,110)
  	end


end

function gameOver( )
	if estadoJogo == 'gameOver' then 
	 	love. graphics.setColor(255,255,255,transparencia * dt ) -- deixr as cores originais da imagem
	 	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	end
end

function menu()
	estadoJogo = "menu"
	menu_load()
end