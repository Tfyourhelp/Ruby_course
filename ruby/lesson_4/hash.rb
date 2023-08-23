#6/
person = { "name" => "John", "age" => 30, "city" => "New York" }

person.each do |key, value|
  puts "#{key.capitalize} : #{value}"
end

count = 0
sum_sales = 0
sales = { "product_A" => 100, "product_B" => 200, "product_C" => 150 }
sales.each do |key, value|
  count += 1
  sum_sales += value.to_i
end
puts "Tổng giá trị có trong hash: #{count}"
puts "Tổng doanh số bán hàng: #{sum_sales}"