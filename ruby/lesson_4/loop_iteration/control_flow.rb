(1..10).each do |i|
  puts i
  break if i > 5
end

i = 1;
while true # loop = while true
  puts i
  i += 1
  break if i > 10
end

puts "======== Next ====="
(1..10).each do |i|
  if i >=5 && i <= 7
    next
  else
    puts i 
  end
end

puts "============= Return ============="
puts "warning: return current method/context.Code below each does not run"
(1..10).each do |i|
  puts i
  return if i == 5
end

puts "============= Return while ============="
i = 1;
while true
  puts i
  i += 1
  return if i > 5
end