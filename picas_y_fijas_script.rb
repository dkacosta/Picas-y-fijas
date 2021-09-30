# Juego de adivinar numeros recibiendo algunas pistas

def titulo
  puts ' ____  _                         _____ _  _'
  puts '|  _ \(_) ___ __ _ ___   _   _  |  ___(_)(_) __ _ ___'
  puts '| |_) | |/ __/ _` / __| | | | | | |_  | || |/ _` / __|'
  puts '|  __/| | (_| (_| \__ \ | |_| | |  _| | || | (_| \__ \ '
  puts '|_|   |_|\___\__,_|___/  \__, | |_|   |_|/ |\__,_|___/ '
  puts '                         |___/         |__/ '
  puts "\nAdivina el numero de 4 cifras que he generado"
end

# Generar numero de 4 cifras que no se repitan

def generar
  @numero = []
  until @numero.length == 4
    cifra = rand(9)
    unless @numero.include?(cifra)
      @numero << cifra
    end
  end
  @numero
end

titulo

puts generar.join
