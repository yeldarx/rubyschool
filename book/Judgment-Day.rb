@humans = 20
@machines = 20

def luck? # Этот момент все решает.
    rand(0..1) == 1
end


def boom

    diff = rand(1..5) # уничтожение, рандом

    good_diff = rand(1..5) # появление, рандом

    if luck? 
        @machines -= diff
        check_victiory
        puts "#{diff} машин уничтожено!"

        @machines += good_diff

        puts "#{good_diff} машин создано!"


    else
        @humans -= diff
        check_victiory
        puts "#{diff} людей погибло..."

        @humans += good_diff

        puts "#{good_diff} людей родилось..."
        
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

def random_sleep
    sleep rand(1..1.5)
end

def stats
    puts "Осталось #{@humans} людей и #{@machines} машин."
end

def event1
    puts "Запущена ракета по городу #{random_city}"
    random_sleep
    boom
end

def event2
    puts "Применено радиоактивное оружие в городе #{random_city}"
    random_sleep
    boom
end

def event3
    puts "Группа солдат прорывает оборону противника в городе #{random_city}"
    random_sleep
    boom
end

def check_victiory
        if @humans <= 0
            puts "Победили машины в количестве #{@machines} машин"
            exit
        elsif @machines <= 0
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
    random_sleep

end