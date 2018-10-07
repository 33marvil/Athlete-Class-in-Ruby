## Ejercicio - Athlete class en Ruby

Crea las clases `Athlete`, `Runner`, `Swimmer` y `Cyclist`, trata de relacionarlas a través de herencia. 

Restricciones:

- Cada atleta podrá incrementar el total de la distancia recorrida `total_distance` y el tiempo total de ejercicio `total_time` a través de realizar más entrenamiento `new_workout`. 
- Al final cada tipo de atleta deberá mostrar la distancia total recorrida `total_distance`, el tiempo total `total_time` y la velocidad obtenida `speed`. 
- Es importante considerar los casos cuando la distancia recorrida `total distance` es igual a 0 y mayor que 0. 

Desarrolla el código basado en las pruebas `specs` correspondientes.

```ruby

#Athlete class
class Athlete

  #método para validar tiempo
  ...
  
  #método para hacer ejercicio
  ...

  #método para obtener velocidad del atleta
  ...
  
end

#Runner class
...

#Swimmer class
...

#Cyclist class
...
``` 

```ruby
#Ejemplo de entrada y salida

#instancia de atleta con distancia en metros y tiempo en segundos
swimmer = Swimmer.new(50, 10)

#test para swimmer con distancia = 50 y tiempo = 5 segundos
p swimmer.swim
#=> "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"

#test para runner al hacer ejercicio, incrementa distancia = 10 metros y tiempo = 5 segundos
swimmer.new_workout(10, 5)

#test para runner con distancia = 60 metros y tiempo = 15 segundos
p swimmer.swim
#=> "Swam 60 meters, time: 15 seconds, speed: 4.0 m/s"

```
