function calcularBL = monomodo(dispersion, lambda)
try
    BL = 1/(dispersion*lambda);
    calcularBL = BL;
catch
    warning('Por favor solo ingresar valores numericos')
    calcularBL = 'null';
end