def form_imc(peso,alt)
    imc = peso / alt**2
end

def cal_imc(imc)
    puts "Tu índice de masa corporal es => #{imc}"
    if imc < 18.5
        puts 'Está bajo de peso'
    elsif imc >= 18.5 && imc <= 24.9
        puts 'Es un peso normal'
    elsif imc >= 25.0 && imc <= 29.9
        puts 'Está en sobrepeso'
    elsif imc > 30.0
        obesidad(imc)
    end
end

def obesidad(imc)
    if imc <= 34.9
        puts 'Obesidad grado I: Moderado'
    elsif imc >= 35 && imc <= 39.9
        puts 'Obesidad grado II: Severo'
    else
        puts 'Obesidad grado III: Muy severo'
    end
end

puts '***¡Bienvenido/a al sistema de cálculo IMC!***'
puts 'Ingresa tu peso en kilogramos:'
peso = gets.chomp.to_f
puts 'Ingresa tu altura expresada en metros:'
alt = gets.chomp.to_f

cal_imc(form_imc(peso,alt).round(1))
