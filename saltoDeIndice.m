
function data = saltoDeIndice(n1, n2, B ,L)
    if n2 >= n1
        data='No hay propagacion';
    else
        C = 3*10^8;   
        C=C*1000;
        AN = n1*sqrt(2*((n1-n2)/n1));
        BL = 2*((n2*C)/(AN^2));
           
        if B == 0 && L == 0
            data = [BL B L];
        else
            if B==0
                B=BL/L;
                data = [BL B L];
            else 
                if L==0
                    L=BL/B;
                    data = [BL B L];
                else
                    if abs(100-((BL*100)/(B*L))) <= 1
                        data = [BL B L];
                    else
                        data = 'No se pudo Calcular el valor de B o de L';
                    end
                end
            end
        end
    end

end