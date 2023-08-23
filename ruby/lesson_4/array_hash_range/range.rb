require './array'

puts "Tất cả các số từ 1 đến 10:"
(1..10).each do |value|
  puts value
end

puts "tất cả các số chẵn từ 2 đến 20: "
even_arr = get_even(arr = (2..20))
even_arr.each do |value|
  puts value
end

puts "Tất cả các chữ cái từ 'a' đến 'z':"
('a'..'z').each do |letter|
  puts letter
end

def check_number(number_to_check)
  if (1..100).include?(number_to_check)
    puts "số cần kiểm tra nằm trong phạm vi từ 1 đến 100."
  else
    puts "Số cần kiểm tra không nằm trong phạm vi từ 1 đến 100."
  end
end
check_number(number_to_check = 101)