house_price = 500000
will_be_paid = house_price * 0.04
ins_years = 1
price_for_one_year = 16666

30.times do
    puts "#{ins_years} год, за использование кредита нужно заплатить #{will_be_paid.to_i} долларов США"
    house_price = house_price - price_for_one_year
    ins_years = ins_years + 1
    will_be_paid = house_price * 0.04
end