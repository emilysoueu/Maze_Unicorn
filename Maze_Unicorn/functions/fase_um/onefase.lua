
function labirinto_fase_one_draw()
	
	--love.graphics.setColor(247, 212, 14) -> cor das barras labirintos
	--love.graphics.rectangle( modo, x, y, largura, altura )
	
	--1 (amarelo)
	--love.graphics.setColor(247, 212, 14)  
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill",  0,   0, 75, 560 )




	--2 (vermelho)
	--love.graphics.setColor(226, 4, 4)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 75,  0, 950, 80)



	--3 (branco)
	--love.graphics.setColor(255, 255, 255)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 75,  480, 800, 80 )



	--4 (azul)
	--love.graphics.setColor(44, 49, 186)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 795,  124, 80, 380 )



	--5-- (verde)
	--love.graphics.setColor(84, 186, 44)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 80,  630, 850, 80 )



	--6-- (rosa)
	--love.graphics.setColor(206, 4, 162)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 920,  80, 100, 630 )




	--7 (azul ciano)
	--love.graphics.setColor(64, 225, 247)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 120, 360, 635, 80)





	-- 8 (azul claro)
	--love.graphics.setColor(124, 450, 247)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 120,  125, 750, 65 )




	--9 (verde neon)
	--love.graphics.setColor(0, 255, 38)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 120,  180, 80, 260 )





	--10 (cinza)
	--love.graphics.setColor(108, 132, 112)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 675,  230, 80, 140 )


	-- 11 (rosa meio)
	--love.graphics.setColor(206, 4, 162)
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 245,  230, 495, 80 )

	
	
end
