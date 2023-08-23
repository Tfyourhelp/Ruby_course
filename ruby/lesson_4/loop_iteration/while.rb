puts "\n======== WHILE 1 ====="
$i = 0
$num = 3

while $i < $num do
  puts("number: = #$i")
  $i += 1
end

puts "\n======== WHILE 2 ====="
$i = 0
$num = 3
begin 
  puts("number: = #$i")
  $i += 1
end while $i < $num

puts "\n======== WHILE 3 ====="
$i = 4
$num = 3
begin 
  puts("RUN 1 time to print: #$i")
  $i += 1
end while $i < $num

puts "\n======== WHILE 4 ====="
$i = 0
$num = 3

def printNumber
  puts $i
  $i += 1
end 

printNumber() while $i < $num