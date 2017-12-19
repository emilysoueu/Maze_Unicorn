require "collision/detectar_collision/checa_colisao"
require "collision/paredes"


function checa_colisao(xone,yone,w1,h1, xtwo,ytwo,w2,h2)
  return xone < xtwo+w2 and
         xtwo < xone+w1 and
         yone < ytwo+h2 and
         ytwo < yone+h1
end

 if checa_colisao(xone,yone,32,32, xtwo,ytwo,32,32) then
        if xone <=xtwo then
            xone = xone - 1.6
        end
        if yone <=ytwo then
            yone = yone - 1.6
        end
        if xone >=xtwo then
            xone = xone + 1.5
        end
        if yone >=ytwo then
            yone = yone + 1.5
        end
    end

function checa_colisao_fase_one (dt)
	    --1 amarelo
	if checa_colisao(xone,yone,32,32,  0,   0, 75, 550 ) or 

	    --2 vermelho
	    checa_colisao(xone,yone,32,32,  75,  0, 800, 80) or 

		-- 3 branco
		checa_colisao(xone,yone,32,32, 75,  425, 580, 80) or

		-- 4 branco
		checa_colisao(xone,yone,32,32,  593,  124, 60, 320) or

		-- 5 azul
		checa_colisao(xone,yone,32,32,  150,  550, 650, 80) or

		-- 6 verde
		checa_colisao(xone,yone,32,32, 720,  80, 100, 600) or

		--7 rosa
		checa_colisao(xone,yone,32,32, 120, 318, 430, 60) or

		-- 8 azul ciano
		checa_colisao(xone,yone,32,32, 120,  125, 500, 60) or

		-- 9 verde neon
		checa_colisao(xone,yone,32,32, 120,  180, 60, 200) or

		--10 cinza
		checa_colisao(xone,yone,32,32, 490,  230, 60, 100) or

		-- 11 rosa meio
		checa_colisao(xone,yone,32,32,  220,  230, 280, 50) then 
		love.graphics.print ("colidiu")
	end
end

