# Un smartwatch muy inteligente cuenta la cantidad de pasos diarios que da una persona,
# pero en algunos casos genera información errónea. Se pide crear un método llamado
# `clear_steps` que reciba un arreglo y descarte todos los valores que no sean números o sean
# menores a 200 o mayor a 100000. Los valores deben quedar como enteros (Integers). El
# método debe retornar el arreglo filtrado. El programa debe llamarse `smartwatch1.rb`.

pasos = ['100', '21', '231as', '2031', '1052000', '231b', 'b123', '100000', '200']

def clear_steps(arr)
    # descarte todos los valores que no sean números
    valid_steps = arr.select do |step|
        # /[\D]/ expresión regular que corresponde a caracteres de tipo string
        step =! /[\D]/.match(step)
    end
    # Los valores deben quedar como enteros (Integers)
    valid_steps = valid_steps.map do |step|
        step = step.to_i
    end
    # descarte todos los valores que sean menores a 200 o mayor a 100000
    valid_steps = valid_steps.select do |step|
        step >200 and step <=100000
    end

    return valid_steps
end

print clear_steps(pasos)
puts