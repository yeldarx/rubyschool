def phone_conv(num)

    numlen = num.length - 1

    0.upto(numlen) do |i|
        case 
        when num[i] == 'A' || num[i] == 'B' || num[i] == 'C'
            num[i] = '2'
        when num[i] == 'D' || num[i] == 'E' || num[i] == 'F'
            num[i] = '3'
        when num[i] == 'G' || num[i] == 'H' || num[i] == 'I'
            num[i] = '4'
        when num[i] == 'J' || num[i] == 'K' || num[i] == 'L'
            num[i] = '5'
        when num[i] == 'M' || num[i] == 'N' || num[i] == 'O'
            num[i] = '6'
        when num[i] == 'P' || num[i] == 'Q' || num[i] == 'R' || num[i] == 'S'
            num[i] = '7'
        when num[i] == 'T' || num[i] == 'U' || num[i] == 'V'
            num[i] = '8'
        when num[i] == 'W' || num[i] == 'X' || num[i] == 'Y' || num[i] == 'Z'
            num[i] = '9'
        else num[i]
        end
    end
    num

end

puts phone_conv('1JJM__A876RE__ SS')