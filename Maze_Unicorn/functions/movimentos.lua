function move_personage(dt)
	if love.keyboard.isDown('right') then
        xone = xone + 100 * dt
    end
    if love.keyboard.isDown('left') then
        xone = xone - 100 * dt
    end
    if love.keyboard.isDown('down') then
        yone = yone + 100 * dt
    end
	if love.keyboard.isDown('up') then
        yone = yone - 100 * dt
    end
    
end