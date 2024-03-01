def phone_conv(num)

    letters = [
            [],          # 0
            [],          # 1
            %w(A B C),   # 2
            %w(D E F),   # 3
            %w(G H I),   # 4
            %w(J K L),   # 5
            %w(M N O),   # 6
            %w(P Q R S), # 7
            %w(T U V),   # 8
            %w(W X Y Z)  # 9
        ]

    numlen = num.length - 1
    0.upto(numlen) do |i|
        letters.each_with_index do |line, index_line|
            line.each_with_index do |letter, index_letter|
                if num[i].upcase == letters[index_line][index_letter]
                    num[i] = index_line.to_s
                end
            end          
        end
    end
    num
end

puts phone_conv('555-MATRESS') # => 555-6287377
