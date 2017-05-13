function data = FrecuenciaNormalizada(n1, n2, r, lambda, AN, delta)
    clc;
    if r == 0
        data='Debe ingresar un radio';
        return 
    end
    
    if lambda == 0
        data='Debe ingresar el Lambda';
        return 
    end
    
    if n1==0 && n2==0 && AN==0 && delta==0
        data='No se puede calcular el AN';
        return
    end
    
    %----------------------------------------------------------------------
    %   (1) AN = n1*sqrt(2*delta)
    %       delta = delta = (n1-n2)/n1  ->   n1, n2
    %   (2) n2 = n1-(delta*n1)          ->   n1, delta
    %   (3) n1 = -n2/(delta-1);         ->   n2, delta
    %----------------------------------------------------------------------    

    if n1==0
        if delta==0 || n2==0
            data = 'No se puede calcular n1';
            return
        end
        n1 = -n2/(delta-1);
    end
    if n2==0
        if delta==0 || n1==0
        	data = 'No se puede calcular n2';
        	return
        end
        n2 = n1-(delta*n1);
     end
     if  delta==0
        if n1==0 || n2==0
            data = 'No se puede calcular delta';
            return
        end
        delta = (n1-n2)/n1;
     end
     AN = n1*sqrt(2*delta);
     V = ((2*pi*r)/lambda)*AN;
     data = [V n1 n2 lambda AN delta];
end