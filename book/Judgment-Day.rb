@humans = 20
@machines = 20

def luck? # Этот момент решает кого становится меньше.
    rand(0..1) == 1 # true - машин становится меньше, false - людей стало меньше.
end

def progress_bar
    4.times do
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

def boom

    diff = rand(1..5) # количество уменьшения, рандом

    good_diff = rand(1..5) # количество появления, рандом

    if luck? 
        @machines -= diff
        check_victiory
        puts "#{diff} машин уничтожено!"

        progress_bar

        @machines += good_diff
        puts "#{good_diff} машин создано!"

        progress_bar


    else
        @humans -= diff
        check_victiory
        puts "#{diff} людей погибло..."
        progress_bar

        @humans += good_diff

        puts "#{good_diff} людей родилось..."
        progress_bar
        
    end
end

def random_city
    case rand(1..5)
    when 1
        'Shmaqa City'
    when 2
        'Fioresto City'
    when 3
        'Juasmzo City'
    when 4
        'Pobafgic City'
    else
        'Dieajuyso City'
    end
end


def stats
    puts "Осталось #{@humans} людей и #{@machines} машин."
    progress_bar
end

def event1
    puts "Запущена ракета по городу #{random_city}"
    progress_bar
    boom
end

def event2
    puts "Применено радиоактивное оружие в городе #{random_city}"
    progress_bar
    boom
end

def event3
    puts "Группа солдат прорывает оборону противника в городе #{random_city}"
    progress_bar
    boom
end

def check_victiory
        if @humans <= 0
            progress_bar
            puts "Победили машины в количестве #{@machines} машин"
            exit
        elsif @machines <= 0
            progress_bar
            puts "Победили люди в количестве #{@humans} людей"
            exit
        end
end


loop do
    if check_victiory
        exit
    end

    case rand(1..3)

    when 1
        event1
    when 2
        event2
    when 3
        event3
    end
    
    stats

end