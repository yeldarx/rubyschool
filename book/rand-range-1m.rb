number = rand(1..1000000)

print 'Привет! Я загадал число от 1 до 1M, попробуйте угадать: '

loop do
   input = gets.to_i
 
    if input == number
        puts 'Правильно!'
        exit
    end
        if input > number
            print "Искомое число #{number} меньше вашего ответа, попробуйте еще раз: "
        else input < number
            print "Искомое число #{number} больше вашего ответа, попробуйте еще раз: "
        end
end