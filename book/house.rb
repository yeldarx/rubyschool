house_price = 500000
will_be_paid = 500000
ins_years = 30

price_for_one_year = house_price / ins_years

ins_years.times do
    puts "Осталось годов: #{ins_years}, еще нужно оплатить: #{will_be_paid}"
    will_be_paid = house_price - price_for_one_year
    ins_years = ins_years - 1
    price_for_one_year = price_for_one_year + 16660
end