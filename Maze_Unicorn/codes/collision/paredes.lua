
-- CODIGO PARA REPULSÃO DO PLAYER AO DETECTAR CONTATO--
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
-- CODIGO PARA REPULSÃO DO PLAYER AO DETECTAR CONTATO--