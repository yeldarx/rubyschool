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
    dice = rand(1..5)
    if dice == 1
        'Shmaqa City'
    elsif dice == 2
        'Fioresto City'
    elsif dice == 3
        'Juasmzo City'
    elsif dice == 4
        'Pobafgic City'
    else dice == 5
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

    dice = rand (1..3)

    if dice == 1
        event1
    elsif dice == 2
        event2
    elsif dice == 3 # else
        event3   
    end
    
    stats
    random_sleep

end