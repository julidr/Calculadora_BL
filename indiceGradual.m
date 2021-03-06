%%n1: Radio del nucleo mm - example n1 = 1.46;
%%n2: Radio de la cubierta mm - example n2 = 1.45;
function data = indiceGradual(n1, n2, B, L)
    clc;
    if n2 >= n1
        data='No hay propagacion';
    else
        C = 3*10^8;   %%Velocidad de la luz m/s
        C=C*1000;
        delta = (n1-n2)/n1;
        BL = (8*C)/(n1*(delta)^2);
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
