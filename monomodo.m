function calcularBL = monomodo(dispersion, lambda, B, L)
clc;

if dispersion == 0 || lambda == 0
    calcularBL = 'No se puede calcular el BL';
    return
else 
    BL = 1/(dispersion*lambda);
end

if B == 0
    if L == 0
        B = NaN;
        L = NaN;
        calcularBL = [BL, B, L];
    else
        B = 1/(dispersion*lambda*L);
        BL = B*L;
        calcularBL = [BL, B, L];
    end
else
    if B == 0
        B = NaN;
        L = NaN;
        calcularBL = [BL, B, L];
    else
        L = 1/(dispersion*lambda*B);
        BL = B*L;
        calcularBL = [BL, B, L];
    end
end