# print "Ваш возраст: "
# age = gets.to_i

# if age < 18
#     puts "Нет 18 - нет игры! Сау болш!"
#     # exit # нужен только для того, чтобы остановить бесконечный цикл?
# end

def progress_bar
    times_rand = rand(1..2)
    times_rand.times do
        print "/\r"
        sleep 0.1
    
        print "-\r"
        sleep 0.1
        
        print "\\\r"
        sleep 0.1
    
        print "|\r"
        sleep 0.1 
    end 
end

balance = 5

loop do
    puts 'Нажмите Enter, чтобы дернуть ручку...'
    gets # очень интересный прием

    x = rand(1..3)
    y = rand(1..4)
    z = rand(1..5)

    progress_bar
    
    puts "Результат: #{x} #{y} #{z}"

    if x == 0 && y == 0 && z == 0
        balance = 0
    elsif x == 1 && y == 1 && z == 1
        balance += 10
        puts 'Баланс увеличился на 10 долларов'
    elsif x == 2 && y == 2 && z == 2
        balance += 20
        puts 'Баланс увеличился на 20 долларов'
    else
        balance -= 0.5
        puts 'Баланс уменьшился на 50 центов'
    end

    if balance <= 0
        puts "Ваш баланс равен или меньше нуля - стоп-игра."
        exit
    elsif balance > 0
        puts "Ваш баланс равен #{balance}$, продолжайте дергать..."
    end

end