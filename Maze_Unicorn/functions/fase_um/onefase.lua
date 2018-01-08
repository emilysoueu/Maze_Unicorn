
function labirinto_fase_one_draw()
	
	--love.graphics.setColor(247, 212, 14) -> cor das barras labirintos
	--love.graphics.rectangle( modo, x, y, largura, altura )
	
	-- (amarelo) 1 - vertical
	--love.graphics.setColor(247, 212, 14)  
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill",  0,   0, 75, 560 )

	--(verde neon) -2 vertical
	--love.graphics.setColor(0, 255, 38)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 120,  180, 80, 260 )

	--(cinza) 3 vertical
	--love.graphics.setColor(108, 132, 112)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 675,  230, 80, 140 )

	--(azul) 4 vertical
	--love.graphics.setColor(44, 49, 186)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 795,  124, 80, 380 )

	--6-- (rosa) 5 vertical
	--love.graphics.setColor(206, 4, 162)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 920,  80, 100, 630 )





	-- (verde) 1 horizontal
	--love.graphics.setColor(84, 186, 44)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 80,  630, 850, 80 )

	--(branco) 2 horizontal
	--love.graphics.setColor(255, 255, 255)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 75,  480, 800, 80 )

	--(azul ciano) 3 horizontal
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 120, 360, 635, 80)

	--(rosa meio) 4 horizontal
	--love.graphics.setColor(206, 4, 162)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 245,  230, 495, 80 )

	--(laranja) 5 horizontal
	--love.graphics.setColor(244, 131, 66)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 120,  125, 750, 65 )

	--(vermelho) - 6 horizontal
	--love.graphics.setColor(226, 4, 4)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 75,  0, 950, 80)
end
