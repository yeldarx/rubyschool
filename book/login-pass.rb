puts "Enter login:"
login = gets.chomp

if login == "admin"
    puts "Enter password:"
    pass = gets.to_i

    if pass == 12345
    puts "Access allowed"
    end
end