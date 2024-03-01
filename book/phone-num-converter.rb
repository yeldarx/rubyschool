def phone_conv(num)
    numlen = num.length - 1
    0.upto(numlen) do |i|
        abc = %w(A B C)
        de_f = %w(D E F)
        ghi = %w(G H I)
        jkl = %w(J K L)
        mno = %w(M N O)
        pqrs = %w(P Q R S)
        tuv = %w(T U V)
        wxyz = %w(W X Y Z)

        abc.each do |n|
            if num[i].upcase == n
                num[i] = '2'
            end
        end

        de_f.each do |n|
            if num[i].upcase == n
                num[i] = '3'
            end
        end

        ghi.each do |n|
            if num[i].upcase == n
                num[i] = '4'
            end
        end

        jkl.each do |n|
            if num[i].upcase == n
                num[i] = '5'
            end
        end

        mno.each do |n|
            if num[i].upcase == n
                num[i] = '6'
            end
        end

        pqrs.each do |n|
            if num[i].upcase == n
                num[i] = '7'
            end
        end

        tuv.each do |n|
            if num[i].upcase == n
                num[i] = '8'
            end
        end

        wxyz.each do |n|
            if num[i].upcase == n
                num[i] = '9'
            end
        end
    end
    num
end

puts phone_conv('555-MATreSS')
