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

# Procesar respuesta del usuario

def respuesta
    @respuesta = 0
    picas = 0
    fijas = 0
    until @respuesta == @numero.join
      system("clear")
      titulo
      # puts @numero.join - Muestra el numero elegido por el programa
      puts "Fijas: #{fijas}"
      puts "Picas: #{picas}"
      print "Escribe un numero de 4 cifras:  "
      @respuesta = gets.chomp.chars.uniq.join
      if @respuesta.length == 4
        picas = 0
        fijas = 0
        4.times do |x|
          if @respuesta[x].to_i == @numero[x]
            fijas += 1
          elsif @numero.include?(@respuesta[x].to_i)
            picas += 1
          end
        end
      end
    end
end
puts generar.join
respuesta
system("clear")
puts "Felicidades GANASTE!!"
