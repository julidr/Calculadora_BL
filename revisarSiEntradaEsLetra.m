function value = revisarSiEntradaEsLetra(entrada)
try
    value = all(ismember(entrada, '0123456789+-.eEdD'));
catch
    value = 0;
end
    
