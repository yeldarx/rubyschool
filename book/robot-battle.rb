@arr1 = Array.new(3, 100)
@arr2 = Array.new(3, 100)

def attack(arr)
    i = rand(0..2)
    sleep 1
    if arr[i] > 0
        udar = rand(30..100)
        arr[i] -= udar
        puts "Попадание по робату номер #{i + 1}, сила удара #{udar} "
        else
            puts "Мимо!"
    end
    sleep 1
end

def victory?
    live1 = @arr1.count { |x| x > 0 }
    live2 = @arr2.count { |x| x > 1 }

    if live1 <= 0 && live2 > 0
        puts "Команда 2 победила, роботов осталось #{live2}"
        return true
        elsif
            live1 > 0 && live2 <= 0
            puts "Команда 1 победила, роботов осталось #{live1}"
            return true
    end
    false
end

def stats
    count1 = @arr1.count { |x| x > 0 }
    count2 = @arr2.count { |x| x > 0 }

    puts "В команде 1 осталось #{count1} роботов: #{@arr1} "
    puts "В команде 2 осталось #{count2} роботов: #{@arr2} "
end

loop do
    puts "Первая команда наносит удар..."
    attack(@arr2)
    exit if victory?
    stats
    sleep 2
    puts

    puts "Вторая команда наносит удар..."
    attack(@arr1)
    exit if victory?
    stats
    sleep 2
    puts
end

# right = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

# 10.times do

#     luck = rand(0..1)
#     if luck == 1
#         arr = left
#         arrname = "Levar"
#         levarr = "Levarr"
#         else
#         arr = right
#         arrname = "Pravar"
#         pravarr = "Pravarr"
#         end

#     i = rand(0..9)
#     if arr[i] == 1
#         arr[i] = 0
#         puts "Робот по индексу #{i} в массиве #{arrname} уничтожен!"
#         else
#             puts "Мимо!"
#         end

#     x = left.count { |x| x == 1 }
#     y = right.count { |y| y == 1 }

#     puts "В массиве #{levarr} осталось #{x} роботов"
#     puts "В массиве #{pravarr} осталось #{y} роботов"

# end