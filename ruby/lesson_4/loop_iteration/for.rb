puts " ========For with array ====="
fruits = ["apple", "banana", "cherry"]
for fruit in fruits
  puts fruit
end

puts " ========For with range ====="
for i in 1..5
  puts i
end

require "active_support/all"
require "date"
# require "active_support/time"
# require "active_support/core_ext"
# require "active_support/core_ext/numeric/time"
# require "active_support/core_ext/numeric/time"
for date in Date.today..5.days.from_now
  puts date
end

puts " ========For with hash ====="
person = {name: "Alice", age: 30, city: "New York"}

for key, value in person
  puts "#{key}: #{value}"
end