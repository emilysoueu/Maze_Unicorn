local anim8 = require "anim8.anim8"

require "functions/personagem"
require "functions/fase_quatro/fourfase"
require "functions/fase_quatro/barramento_fase_four"

function fourfase_load(  )
	
	-- background
	fundo = love.graphics.newImage("image/maze_four.jpg")
	planoDeFundo = {
	x = 0,
	y = 40,
	}
	-- background

	-- personagem
	player_load()
	-- personagem

	--portal
	imgPortal = love. graphics. newImage('image/portal.png')
	portal = {
	x = 400,
	y =  300,
	}
	--portal



	-- contagem regressiva
	relogy = 60
	print_relogy = 0 
	-- contagem regressiva

	-- aumentar o tempo
	maisTempo = true
	delayMaisTempo = 0.10
	tempoNovoMaisTempo = delayMaisTempo
	rainbow = {}
	arco_iris = love.graphics.newImage ('image/good_bonus.png')
	m_tempo = {
	x = math.random (0,300),
	y = math.random (0,300),
	}
	-- aumentar o tempo

	-- diminuir o tempo
	maispontos = love.graphics.newImage('image/bad_bonus.png')
	m_pontos = {
	x = 550,
	y = 300,
	}
	-- diminuir o tempo

	-- game over
	estaVivo = true
	gameOver = false
	transparencia = 0
	imgGameOver = love.graphics.newImage('image/mazeunicorn_gameover.jpg')
	-- game over

end

function fourfase_update( dt )

	--movimento do personagem
	player_update(dt)
    --movimento do personagem

    -- colisao
    fase_four_colisao_update(dt)
    -- colisao

 	-- relogio
		relogy = relogy - dt
		print_relogy = math.floor(relogy)
	-- relogio

    function win()
		estadoJogo = "win"
		win_load(  )
	end


	function gameOver()
		estadoJogo = "gameOver"
		gameOver_load(  )
	end
end

function fourfase_draw( )

	-- fundo
	love.graphics.setColor(255, 255, 255)
	love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
	-- fundo
	
	-- desenho do labirinto
	labirinto_fase_four_draw()
	-- desenho do labirinto

	-- relogy
	love.graphics.setColor(226, 4, 4)
	love.graphics.print('tempo restante: ' .. print_relogy, 400, 0 )
	-- relogy

	-- portal
	love.graphics.draw(imgPortal, portal.x, portal.y)
	-- portal-

	-- personagem
	player_draw ()
	-- personagem 

	-- mais tempo
	--love.graphics.draw( arco_iris, m_tempo.x, m_tempo.y)

	function aumentarTempo( dt )
		tempoNovoMaisTempo = tempoNovoMaisTempo - ( 1 * dt )
		if tempoNovoMaisTempo < 0 then 
			maisTempo = true
		end
		if maisTempo then 
		    	menosPontos = {x = m_tempo.x, y = m_tempo.y, img = arco_iris}
		    	table.insert (rainbow,novoRainbown)
		    	maisTempo = false
		    	tempoNovoMaisTempo = delayMaisTempo
		end
		for i, rainbow in ipairs (rainbow) do 
				m_tempo.y = m_tempo.y - (500 * dt)
				if  m_tempo.y < 0 then  
					table.remove (rainbow,i)
				end
		end
	end

	-- mais tempo

	-- mais pontos
	love.graphics.draw( maispontos, m_pontos.x, m_pontos.y)
	--mais pontos


	-- tela game over
	if relogy <=  0 then
		gameOver ()
		--gameOver = true
		--love.graphics.draw(imgGameOver, 0, 0)
	end
	-- tela game over
end
