left = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
right = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

10.times do

    luck = rand(0..1)
    if luck == 1
        arr = left
        arrname = "Levar"
        levarr = "Levarr"
        else
        arr = right
        arrname = "Pravar"
        pravarr = "Pravarr"
        end

    i = rand(0..9)
    if arr[i] == 1
        arr[i] = 0
        puts "Робот по индексу #{i} в массиве #{arrname} уничтожен!"
        else
            puts "Мимо!"
        end

    x = left.count { |x| x == 1 }
    y = right.count { |y| y == 1 }

    puts "В массиве #{levarr} осталось #{x} роботов"
    puts "В массиве #{pravarr} осталось #{y} роботов"

end