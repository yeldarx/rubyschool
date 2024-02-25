# print "Ваш возраст: "
# age = gets.to_i

# if age < 18
#     puts "Нет 18 - нет игры! Сау болш!"
#     exit # нужен только для того, чтобы остановить бесконечный цикл?
# end

balance = 10

loop do
    puts 'Нажмите Enter, чтобы дернуть ручку...'
    gets # очень интересный прием

    sleep 0.3

    x = rand(1..3)
    y = rand(1..3)
    z = rand(1..3)

    print "Результат: " # цифры появляются аниминованно
    sleep rand(0.5..1.5)
    print "#{x} "
    sleep rand(0.5..1.5)
    print "#{y} "
    sleep rand(0.5..1.5)
    print "#{z}"

    sleep 1

    puts
    puts


    if x == 0 && y == 0 && z == 0
        balance = 0
    elsif x == 1 && y == 1 && z == 1
        balance += 10
        puts 'Баланс увеличился на 10 долларов.'
    elsif x == 2 && y == 2 && z == 2
        balance += 20
        puts 'Баланс увеличился на 20 долларов.'
    elsif x == 3 && y == 3 && z == 3
        balance += 30
        puts 'Баланс увеличился на 30 долларов.'
    else
        balance -= 0.5
        puts "Баланс уменьшился на 50 центов и равен #{balance} долларам США."

        if balance <= 0
            puts
            puts "Стоп-игра."
            exit
        end

    end

    puts
    
    # sleep 0.5
    
    

end