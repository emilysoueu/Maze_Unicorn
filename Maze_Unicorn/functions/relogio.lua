function time_load(  )
	time = 0
	print_time = 0
end


function time_update( dt )
	time = time + (1*dt)
	print_time = math.floor(time)
end

function time_draw( )
	    love.graphics.setColor(0, 0, 0)
		love.graphics.setFont (numeros)
		love.graphics.print(print_time, 680, 50 )
end

