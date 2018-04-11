local anim8 = require "anim8.anim8"

function player_load()

  unicorn = love.graphics.newImage("image/personagem.png")

  width, height = unicorn:getWidth(), unicorn:getHeight()
  width1 = width / 12
  height1 = height / 8
  g = anim8.newGrid(width1, height1, width, height)
  loop = 0.1

  player = {
   posX = 0,
   posY = 700,
   speed = 130,
   animations = {
     down = anim8.newAnimation(g('4-6', 5, 5, 5), 0.2),  -- (4-6) = frames usados, 5 = linha, 5 = frame seguinte/ meio, 5 = linha, 0.2 = loop mostrado
     left = anim8.newAnimation(g('4-6', 6, 5, 6), 0.2),  -- (4-6) = frames usados, 6 = linha, 5 = frame seguinte/ meio, 6 = linha, 0.2 = loop mostrado
     right = anim8.newAnimation(g('4-6', 7, 5, 7), 0.2), -- (4-6) = frames usados, 7 = linha, 5 = frame seguinte/ meio, 7 = linha, 0.2 = loop mostrado
        up = anim8.newAnimation(g('4-6', 8, 5, 8), 0.2),    -- (4-6) = frames usados, 8 = linha, 5 = frame seguinte/ meio, 8 = linha, 0.2 = loop mostrado
   }
  }
 player.animation = player.animations.down

end

function player_update(dt)

  player.animation:update(dt)

  if love.keyboard.isDown("up") then
    player.posY = player.posY - player.speed *  dt
    player.animation = player.animations.up
  elseif love.keyboard.isDown("down")  and  player.posY <= 680 then
    player.posY = player.posY + player.speed * dt
    player.animation = player.animations.down
  elseif love.keyboard.isDown("left") and  player.posX > 10 then
    player.posX = player.posX - player.speed *  dt
    player.animation = player.animations.left
  elseif love.keyboard.isDown("right") then
    player.posX = player.posX + player.speed *   dt
	  player.animation = player.animations.right
	--else
	--player.animation = player.animations.down_move
  end

end

function player_draw()

--love.graphics.setBackgroundColor(255,255,255)

player.animation:draw(unicorn, player.posX, player.posY)

end
