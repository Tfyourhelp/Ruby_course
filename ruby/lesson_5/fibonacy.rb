def fibonaci(n)
  return n if (n<=1)
  fibonaci(n-1) + fibonaci(n-2)
end

puts fibonaci(3)

range(1..20) each do |single|
  puts "Số thứ #{single} là #{fibonaci(single)} "
end
