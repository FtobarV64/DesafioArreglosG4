# Crear el programa `promedio2.rb` con el método `compara_arrays` que reciba 2 arreglos y
# calcule el promedio de ambos, devolviendo el mayor de los promedios.

# Tips:
# ● Ocupar los métodos de array y string que estudiamos.
# ● Puedes ocupar el método para calcular el promedio del ejercicio
# anterior, pero debes agregarlo al archivo nuevo.
# ● Debes respetar el nombre del método.
# ● Puedes probar el programa llamando al método y mostrando el resultado, pero no es
# necesario que el programa entregue resultado alguno, la revisión se hace llamando al
# método.
visitas = [1000, 800, 250, 300, 500, 2500]
visitas_1 = [2000, 4500, 250, 1300, 500, 2000]

def compara_arrays(arr_1, arr_2)
    average_1 = arr_1.sum/arr_1.size
    average_2 = arr_2.sum/arr_2.size
    if average_1>average_2
        average_1
    else
        average_2
    end
end

puts compara_arrays(visitas, visitas_1)