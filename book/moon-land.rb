puts "Enter dlina: "
dlina = gets.to_i

    puts "Enter shrina: "
    shrina = gets.to_i

    ploshad = dlina * shrina
    because = ", because ploshad is #{ploshad}."

        if  ploshad <= 50
            puts "Price is $1000#{because}"
        end

        if ploshad > 50 && ploshad <= 100
                puts "Price is 1500#{because}"
        end
       
        if ploshad > 100
                    puts "Price is $#{ploshad * 25}#{because}"
        end
