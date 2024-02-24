@humans = 20
@machines = 20

def luck?
    rand(0..1) == 1
end

def vic_checker
    if @humans <= 0
        puts "Победили машины в количестве #{@machines} машин"
        exit
    elsif @machines <= 0
        puts "Победили люди в количестве #{@humans} людей"
        exit
    end
end


def boom
    diff = rand(1..5)
    if luck?
        @machines -= diff
        vic_checker
        puts "#{diff} машин уничтожено!"
    else
        @humans -= diff
        vic_checker
        puts "#{diff} людей погибло..."
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

def check_victiory?
        false
end


loop do
    if check_victiory?
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