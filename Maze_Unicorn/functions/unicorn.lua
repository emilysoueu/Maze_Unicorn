function unicorn_load ()
-- background
	fundo = love.graphics.newImage("image/unicorn.jpg")
	planoDeFundo = {
	x = 0,y = 0,
	}

end

function unicorn_update(dt)
end

function unicorn_draw ()
	 love.graphics.draw( fundo, planoDeFundo.x, planoDeFundo.y)
end

