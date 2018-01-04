function labirinto_fase_four_draw()
	--love.graphics.rectangle( modo, x, y, largura, altura )

	--1 (amarelo) - deixa
	--love.graphics.setColor(247, 212, 14)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
	love.graphics.rectangle("fill",  0,   0, 80, 650 )

	--2 (vermelho) - deixa
	--love.graphics.setColor(226, 4, 4)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
	love.graphics.rectangle("fill", 75,  0, 1200, 60 )

	--3 (branco) - diminuir
	--love.graphics.setColor(255, 255, 255)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
	love.graphics.rectangle("fill", 75,  525, 263, 80 )

	--4 (azul) - deixa
	--love.graphics.setColor(44, 49, 186)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
	love.graphics.rectangle("fill", 800,  99, 80, 280 )           

	--5-- (verde) - deixa
	--love.graphics.setColor(84, 186, 44)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
	love.graphics.rectangle("fill", 150,  650, 1200, 80 )

	--6-- (rosa) - deixa
	--love.graphics.setColor(206, 4, 162)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
 	love.graphics.rectangle("fill", 930,  125, 100, 600 )

	--7 (azul ciano)
	--love.graphics.setColor(64, 225, 247)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
	love.graphics.rectangle("fill", 125, 100, 329.5, 60)

	-- 8 (laranja) - diminuir a largura para encaixar no cinza
	--love.graphics.setColor(224, 118, 47)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
	love.graphics.rectangle("fill", 336,  430, 544, 80 )
	
	--9 (verde neon) - aumentar no x
	--love.graphics.setColor(0, 255, 38)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
	love.graphics.rectangle("fill", 258,  200, 80, 353)

	--10 (cinza) - subir no x
	--love.graphics.setColor(108, 132, 112)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
	love.graphics.rectangle("fill", 400,  55, 80, 200 )

	-- 11 (rosa meio) - deixa
	--love.graphics.setColor(206, 4, 162)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
	love.graphics.rectangle("fill", 520,  100, 280, 80 )

	-- 12 (roxo)
	--love.graphics.setColor(146, 66, 244)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
	love.graphics.rectangle("fill", 670,  235, 80, 200 )

	-- 13  (vermelho) - baixo
	--love.graphics.setColor(226, 4, 4)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(162, 249, 235)
	love.graphics.rectangle("fill", 470,  550, 80, 100 )	
end
