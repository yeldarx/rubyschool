loop do 
    robot = rand(1..3)  # 1 == R
                        # 2 == S
                        # 3 == P

    print "(R)ock? (S)cissor? (P)aper? "
    s = gets.strip.capitalize

    case
        when s == 'R'
            human = 1

        when s == 'S'
            human = 2

        when s == 'P'
            human = 3
            else
                print 'Wrong answer! '
    end

    if robot == human
        puts "Ничья! Robot – #{robot}, Human – #{human}"
        
        elsif robot == 2 && human == 1 
            puts "Human wins! Robot - Scissor – #{robot}, Human - Rock – #{human}"

        elsif robot == 3 && human == 1 
            puts "Robot wins! Robot - Paper – #{robot}, Human - Rock – #{human}"
        
        elsif robot == 1 && human == 2 
            puts "Robot wins! Robot - Rock – #{robot}, Human - Scissor – #{human}"
        
        elsif robot == 1 && human == 3 
            puts "Human win! Robot - Rock – #{robot}, Human - Paper – #{human}"
        
        elsif robot == 2 && human == 3
            puts "Robot win! Robot - Scissor – #{robot}, Human - Paper – #{human}"
        
        elsif robot == 3 && human == 2
            puts "Robot win! Robot - Paper – #{robot}, Human - Scissor – #{human}"

            else
                puts "Not set! Robot – #{robot}, Human – #{human}"
    end

end