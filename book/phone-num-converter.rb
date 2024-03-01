def phone_conv(num)
    numlen = num.length - 1
    0.upto(numlen) do |i|
        letters = [
            %w(A B C),   # 0
            %w(D E F),   # 1
            %w(G H I),   # 2
            %w(J K L),   # 3
            %w(M N O),   # 4
            %w(P Q R S), # 5
            %w(T U V),   # 6
            %w(W X Y Z)  # 7
        ]
 
        letters.each_with_index do |j, index_j|
            j.each_with_index do |k, index_k|
                if num[i].upcase == letters[index_j][index_k]
                    newnum = index_j + 2
                    num[i] = newnum.to_s
                end
            end          
        end
    end
    num
end


puts phone_conv('555-MATRESS') # => 555-6287377
