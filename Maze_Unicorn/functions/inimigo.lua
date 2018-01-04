local anim8 = require "anim8.anim8"

function inimigo_load()

  ghost = love.graphics.newImage("image/ghost.png")

  width, height = ghost:getWidth(), ghost:getHeight()
  width1 = width / 4
  height1 = height / 4
  g = anim8.newGrid(width1, height1, width, height)
  loop = 0.1

  inimigo = {
   posX = 100,
   posY = 550,
   speed = 130,
   animations = {
     down = anim8.newAnimation(g('1-4', 1, 3, 1), 0.2),
     left = anim8.newAnimation(g('1-4', 2, 3, 2), 0.2),
     right = anim8.newAnimation(g('1-4', 3, 3, 3), 0.2),
        up = anim8.newAnimation (g('1-4', 4, 3, 4), 0.2),
   }
  }
 inimigo.animation = inimigo.animations.down

end

function inimigo_update(dt)

  inimigo.animation:update(dt)

  if love.keyboard.isDown("w") then
    inimigo.posY = inimigo.posY - inimigo.speed * dt
    inimigo.animation = inimigo.animations.up
  elseif love.keyboard.isDown("s") then
    inimigo.posY = inimigo.posY + inimigo.speed * dt
    inimigo.animation = inimigo.animations.down
  elseif love.keyboard.isDown("a") then
    inimigo.posX = inimigo.posX - inimigo.speed * dt
    inimigo.animation = inimigo.animations.left
  elseif love.keyboard.isDown("d") then
    inimigo.posX = inimigo.posX + inimigo.speed * dt
	inimigo.animation = inimigo.animations.right
	--else
	--player.animation = player.animations.down_move
  end

end

function inimigo_draw()

love.graphics.setBackgroundColor(255,255,255)

inimigo.animation:draw(ghost, inimigo.posX, inimigo.posY)

end
