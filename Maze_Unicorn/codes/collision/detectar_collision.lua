function checa_collision_fase_one(dt)
	if  (xone, yone, 32, 32,) == (0, 0, 80, 500,) --[[or 
		--2 (vermelho)
		--(xone,  yone, 32, 32 ) ==  (80,  0, 800, 80) or
		--3 (branco)
		(xone,  yone, 32, 32 ) ==  (70,  400, 525, 80 ) or
		--4 (azul)
		(xone,  yone, 32, 32 ) ==  (495,  170, 100, 230 ) or
		--5-- (verde)
		(xone,  yone, 32, 32 ) ==  (150,  550, 600, 80 ) or
		--6-- (rosa)
		(xone,  yone, 32, 32 ) ==  (700,  80, 100, 600 ) or
		-- 7 (azul ciano)
	    (xone,  yone, 32, 32 ) =  (200,  170, 310, 80 )]] then 
			print('colidiu')
	end	
end