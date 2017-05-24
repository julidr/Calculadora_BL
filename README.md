# CRO #
Simple calculadora de BL para diferentes tipos de fibra óptica.

## Tipos de Fibra ##
- Monomodo
- Multimodo de Salto de Indice
- Multimodo de Indice Gradual

## Colaboradores ##
- [Steven Puerto](https://github.com/stevenn2012)
- [Juliana Diaz](https://github.com/julidr)
- [Mario Ortega](https://github.com/bellyoz)

## Manual de Usuario ##
Para Iniciar el software debe abrirlo en matlap y luego ejecutar el archivo menuGUI.m
la cual le mostrara una ventana como la siguiente figura.

![Img Menu](/imgreadme/menugui.PNG)

Los espacios como n2 se pueden dejar en cero y el software los calculara automaticamente
cuando el boton de calcular sea presionado. Como resultado le mostrara la frecuencia normalizada
de los datos de entradas y desplegara otra ventana indicando si es una fibra monomodo o multimodo.

  | Consideraciones |
  |:-------|
  | Existen algunos campos como a y λ que son obligatorios para realizar los calculos, de igual forma considere que si quedan demasiados campos vacios tampoco se podra calcular la frecuencia Normalizada. |

![Img Menu](/imgreadme/menuMultimodo.PNG)

En caso de ser multimodo se desplegara el menu de la grafica anterior, con el fin en que se pueda seleccionar entre los multimodos
indice gradual o Salto de indice. En caso de seleccionar Salto de indice se desplegara un menu como los muestra la siguiente grafica.

![Img Menu](/imgreadme/saltodeindice.PNG)

Como se puede ver en la anterio imagen se pediran los campos de Banda ancha y la longitud de la fibra si esta se colocan en cero y luego de 
presionar el boton calcular, se mostrara el resultado BL para estos valores. Tambien en la ventana se mostraran la cantidad de modos propagados.

![Img Menu](/imgreadme/saltodeindice2.PNG)

En la grafica anterior si se le da un valor ya sea al ancho de banda (B) o la longitud (L) y se procede a calcular el programa automaticamente
calculara el espacio que falta. Como fue en este caso que el ancho de banda era 5 y la longitud igual a 0, cuando se le da a calcular la longitud
automaticamente se adapta a la mejor para este ancho de banda. Igualmente funciona de manera viceversa, es decir con un ancho de banda en cero y con valor de longitud ingresado por el usuario,
tambien mostrara el BL correspondiente a estos datos ingresados.

![Img Menu](/imgreadme/saltodeindice3.PNG)

Si accionan el boton de graficar Demo se desplegara la ventana anterior, la cual tendra los valor anteriores de n1 y n2 con la posibilidad de cambiarlos.

![Img Menu](/imgreadme/saltodeindice4.PNG)

Al presionar el boton graficar, se abre otra ventana donde muestra el comportamiento en base al ancho de banda y la longitud la cual siempre es de 1km segun n1 y n2 ingresado anteriormente.

![Img Menu](/imgreadme/indicegradual1.PNG)

En caso de accionar el boton de indice gradual se desplegrara una ventana similar al de Salto de indice con la posibilidad de cambiar el ancho de banda y su longitud para asi calcular su respectivo BL.
Esta fibra tambien tiene la capacidad de calcular el ancho de banda segun dea su longitud y viceversa.

![Img Menu](/imgreadme/indicegradual2.PNG)

Si se le acciona el boton de graficar, igualmente como funciona con el salto de indice desplegara una ventana en la cual se podra asignar valores de n1 y n2 para poderlos graficar.

![Img Menu](/imgreadme/indicegradual3.PNG)

Al presiona el boton de graficar, nuevamente de despliega otra ventana con el comportamiento del ancho de banda y su longitud la cual es 1 kilometro.

![Img Menu](/imgreadme/menuguimono.PNG)

En caso de ingresar valores en el menu principal, con los cuales su resultado sea una fibra monomodo como en ejemplo de la grafica anterior. Al calcular se despliega una ventana como la siguiente.

![Img Menu](/imgreadme/monomodo1.PNG)

La figura anterior muestra los parametros que se deben ingresar para calcular el BL de una fibra monomodo. En este caso el parametro de dispersion y el delta de lambda son obligatorios para realizar este calculo.
y los datos de ancho de banda como la longitud se comportan igual a las anteriores fibras, es decir que con un dato que se le ingrese a alguno de estos campos, el otro se autocompleta. Como en el ejemplo anterior se le dio un valor de 2km a la longitud y el ancho de banda  se ajusto a 0.05 Gb. 

![Img Menu](/imgreadme/monomodo2.PNG)

Si se acciona el boton grafica demo de despliega una ventana como la anterio, con el fin de ingresar los valores de Dispersion y de delta de lambda para poder realizar la grafica.

![Img Menu](/imgreadme/monomodo3.PNG)

Al presionar graficar de abrira una ventana en la cual se mostrara los resultados de como se comporta la fibra en cuanto el Ancho de banda y su longitud que es 1 km.