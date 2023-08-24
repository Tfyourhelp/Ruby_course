number = [1, 2, 3]
n1 = number.map do |n|
  n*n
end
print n1

puts "\n========shorthand====="
n2 = number.map{ |n| n*n*n}
print n2

puts "\n======== shortest ====="
n3 = number.map(&:to_s)
print n3

puts "\n======== Hash ====="
hash = {key1: "Value1", key2: "Value2"}

h2 = hash.map do |key, value|
  [value, key]
end.to_h
print h2

puts "\n======== Hash 2 ====="
h3 = hash.map { |key, value| value }
print h3