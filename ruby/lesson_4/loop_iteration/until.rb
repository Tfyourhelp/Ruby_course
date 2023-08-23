puts "\n======== UNTIL 1 ====="
$i = 0
$num = 3

until $i > $num do
  puts("Number = #$i")
  $i += 1;
end

puts "\n======== UNTIL 2 ====="
$i = 0
$num = 3
begin
  puts("Number = #$i")
  $i += 1;
end until $i > $num   