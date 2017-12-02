function love.load()

ponei1 = {}
xone = 300
yone = 300

ponei2 = {}
xtwo = 200
ytwo = 200

comida1 = {}
xc1=250
yc1= 250

comida2 = {}
xc2=100
yc2= 100

 --[[ cores]]
 h1 = 246
 h2 = 255
 h3 = 94

end

function love. update(dt)
-- movimentar meu personagem one(um) pelo labirinto
	if love.keyboard.isDown("right") and xone <= 750 then
        xone = xone + 100 *dt
    end
	if love.keyboard.isDown("left") and xone >= 50 then
        xone = xone - 100 *dt
    end
	if love.keyboard.isDown("down") and yone <= 550 then
        yone = yone + 100 *dt
    end
	if love.keyboard.isDown("up") and yone >= 50 then
        yone = yone - 100 *dt
    end
--[[
-- movimentar meu personagem two(dois) pelo labirinto
	if love.keyboard.isDown("d") and xtwo <= 750 then
        xtwo = xtwo + 100 *dt
    end
	if love.keyboard.isDown("a") and xtwo >= 50 then
        xtwo = xtwo - 100 *dt
    end
	if love.keyboard.isDown("s") and ytwo <= 550 then
        ytwo = ytwo + 100 *dt
    end
	if love.keyboard.isDown("w") and ytwo >= 50 then
        ytwo = ytwo - 100 *dt
    end
]]



end

function love.draw ()
-- high score jogador 1
-- high score do jogador 2
-- vidas jogador 1
-- vidas jogador 2
-- menu
-- mostrar quem ganhou
-- mostrar quem perdeu
-- pedir pr o usuário inserir o nome e mostrar em cima do avatar




--[[
love.graphics.circle( modo, x, y, raio, segmentos )

	 love.graphics.circle("fill", xc2, yc2, 15)
	 love.graphics.setColor(h1, h2, h3)

     love.graphics.circle("fill", xc1, yc1, 15)
	 love.graphics.setColor(239, 249, 97)
	 ]]

	 love.graphics.setColor(5, 1, 135)
	 love.graphics.circle( "fill", xtwo, ytwo, 50)


	 love.graphics.setColor(246, 0, 255)
	 love.graphics.circle( "fill", xone, yone, 50)


--love.graphics.rectangle( modo, x, y, largura, altura )

	  love.graphics.setColor(66, 134, 244)
	  love.graphics.rectangle("fill", 120, 110, 60, 380 )

	  love.graphics.setColor(65, 244, 65)
	  love.graphics.rectangle ("fill", 300, 110, 60, 380 )

	  love.graphics.setColor(244, 226, 66)
	  love.graphics.rectangle ("fill", 480, 110, 60, 380 )

	  love.graphics.setColor(244, 226, 66)
	  love.graphics.rectangle ("fill", 490, 110, 145, 60 )
end


function checaColisao ()
-- colisão do jogador 1 com os blocos do labirinto (game over)
-- colisão do jogador 2 com os bloco do labirinto  (game over)
-- colisão do jogador 1 com o jogaodr 2 e vice-versa (game over)

-- colisão dos jogadores com vidas extras (aumenta vida)

end

