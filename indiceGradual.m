%%n1: Radio del nucleo mm - example n1 = 1.46;
%%n2: Radio de la cubierta mm - example n2 = 1.45;
function BL = indiceGradual(n1, n2)
try
    clc;
    if n2 >= n1
        disp('No hay propagacion');
        BL = 'null';
    else
        C = 3*10^8;   %%Velocidad de la luz m/s
        C=C*1000;
        delta = (n1-n2)/n1;
        BL = (8*C)/(n1*(delta)^2);
        %%fprintf('BL <= %1.3f\n',BL)
    end
catch
    warning('Por favor solo ingresar valores numericos o valores de n1 y n2 aceptables')
    BL = 'null';
end