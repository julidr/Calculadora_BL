function calcularBL = monomodo(dispersion, lambda)
try
    BL = 1/(str2num(dispersion)*str2num(lambda));
    calcularBL = BL;
catch
    warning('Por favor solo ingresar valores numericos')
    calcularBL = 'null';
end