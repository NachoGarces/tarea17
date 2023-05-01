def juego(pc)
    us=1
    while us != 0
        us = gets.chomp.to_i
        if us == pc
            puts "Ganaste!!! El numero si era #{pc}"
            break
        elsif us == 0
            puts "Adios, el numero era #{pc}"
        else
            puts 'Perdiste, intentalo otra vez o sal con 0'
        end
    end
end

puts "Ingresa el numero tope del juego\n    1 - ?"
tope = gets.chomp.to_i
puts "Jugaremos de 1 a #{tope} y preciona 0 para salir\n\nPrueba suerte!"
pcJuega = rand(1..tope)

juego(pcJuega)
