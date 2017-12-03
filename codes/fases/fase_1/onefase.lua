function love.draw( ... )
	-- barras verticais
	-- (cor rosa)
  	--love.graphics.setColor(224, 56, 221)

  	-- (cor branca 252, 249, 247)
  	love.graphics.setColor(252, 249, 247)

  	--love.graphics.rectangle( modo, x, y, largura, altura )
	love.graphics.rectangle("fill", 0,  0, 150, 600 )
	-- (cor azul)
	--love.graphics.setColor(35, 201, 252)

	-- (cor branca 252, 249, 247)
	love.graphics.setColor(252, 249, 247)
	love.graphics.rectangle("fill", 300,  0, 150, 300)


	-- barras horizontais
	-- (cor verde)
	--love.graphics.setColor(33, 224, 62)

	-- (cor branca 252, 249, 247)
	love.graphics.setColor(252, 249, 247)
	love.graphics.rectangle("fill", 150,  300, 200, 150 )

	-- (cor laranja)
	--love.graphics.setColor(252, 139, 34)

	-- (cor branca 252, 249, 247)
	love.graphics.setColor(252, 249, 247)
	love.graphics.rectangle("fill", 450, 500, 200, 150)

	-- (cor branca 252, 249, 247)

end