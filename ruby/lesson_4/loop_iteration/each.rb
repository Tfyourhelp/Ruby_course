array = ["So 1", "So 2", "So 3 "]

array.each do |s|
  puts s
end

array.each_with_index do |s, i|
  puts "vi tri #{i} co value #{s}"
end

array.each_with_index do |s, i|
  puts "vi tri #{i} co value #{s}"
end

array.each_with_index { |s, i| puts "vi tri #{i} co value #{s}"}