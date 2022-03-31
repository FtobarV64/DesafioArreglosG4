# Se necesita crear un programa llamado `filtro_procesos.rb` que lea un archivo que tiene
# datos por línea. Estos datos representan la cantidad de milisegundos que demoran en
# terminar algunos procesos del sistema operativo.
# Se necesita un programa que pueda leer un archivo de las mismas características y generar
# un archivo llamado `procesos_filtrados.data` donde todos los valores sean mayor a un
# número.

def data_filter(file = 'procesos.data', filter)
    # Abrimos y leemos las filas del archivo "file"
    data = open(file).readlines
    # Convertimos a integer los datos traidos
    data = data.map do |reg|
        reg = reg.to_i
    end
    # Aplicamos filtro según parametro aplicado
    data = data.select do |reg|
        reg > filter
    end
    # Generar un archivo llamado `procesos_filtrados.data`
    File.write("procesos_filtrados.data", data.join("\n"))
    # return data
end

data_filter(ARGV[0].to_i)