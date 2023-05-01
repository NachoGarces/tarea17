def nuevoSalario(actual, porciento)
    actualizado = (actual+(actual*(porciento/100.0)))
    puts "\n- Con ese incremento tu nuevo salario seria: #{actualizado}\n\n"
    loop()
end

def datos()
    puts "\nIngresa tu salario actual"
    salario = gets.chomp.to_f
    puts 'En cuanto porcentaje incrementó el salario?'
    incremento = gets.chomp.to_f
    if salario >= 1 && incremento != 0
        nuevoSalario(salario, incremento)
    else
        puts "\n** Datos ingresados no validos **\n\n"
        loop()
    end     
end

def loop
    puts 'Realizar otro (Y) - Salir (enter)'
    otro = gets.chomp.to_s.upcase
    if otro == 'Y'
        datos()
    end
end

datos()
