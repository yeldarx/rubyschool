score = 0

def champ(score)

    if score >= 50
        puts "HUMAN is CHAMPION"
        exit
        elsif score <= -50
            puts "ROBOT is CHAMPION"
            exit
    end
    sleep 1
end

def check(score)
    puts "Score is #{score}"
    champ(score)
end



def win(who, score)
    case who
    when :rob
        puts "robot wins"
        score -= rand(5..10)
        check(score)
    when :hum
        puts "human wins"
        score += rand(5..10)
        check(score)
    end
    score
end

loop do 

    game = [ :rock, :paper, :scissor ]

    i = rand(0..2)
    j = rand(0..2)
    
    human = game[i]
    robot = game[j]

    case
        when human == robot
            puts "draw"

        when human == :rock && robot == :paper
            score = win(:rob, score)

        when human == :rock && robot == :scissor
            score = win(:hum, score)
        
        when human == :paper && robot == :scissor
            score = win(:rob, score)
        
        when human == :paper && robot == :rock
            score = win(:hum, score)

        when human == :scissor && robot == :rock
            score = win(:rob, score)

        when human == :scissor && robot == :paper
            score = win(:hum, score)
        
    end

end