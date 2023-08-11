fruit = ['Apple', 'Orange', 'Squash']
puts fruit[0]
fruit << 'Corn'
puts fruit[3]
puts fruit.count
puts fruit.delete('Apple')

puts('-----------------------------------------------------')

puts "Input your name:"
name = gets.chomp
puts "Hello #{name}, nice to meet you!"

puts('-----------------------------------------------------')

true.class
false.class
nil.class

puts('-----------------------------------------------------')

def output_something(value)
    puts "HELLO #{value}" 
  end
  
output_something("Ruby")

puts('-----------------------------------------------------')

fruit = {
	:apple => 'fruit',
	:orange => 'fruit',
:squash => 'vegetable'
}
puts fruit[:apple]
fruit[:corn] = 'vegetable'
puts fruit[:corn]

puts('-----------------------------------------------------')

colors = {
	"red" => 1,
	"blue" => 2,
"green" => 3
}
p colors["red"]
colors["red"] = 4
p colors["red"]
colors.delete("red")

puts(colors)

puts('-----------------------------------------------------')

age = 40
if age < 12
	puts "You are too young to play"
elsif age < 30
	puts "You can play for the normal price"
elsif age < 65
	puts "You can play free"
else
	puts "You are too old to play"
end

puts('-----------------------------------------------------')

clock = 0
while clock < 5
	puts "Count #{clock.to_s}"
	clock += 1
end

puts('-----------------------------------------------------')

fruits = ['Apple', 'Orange', 'Squash']
fruits.each do |fruit|
	puts fruit
end

fruits.each_with_index do |fruit, index|
	puts "#{index} is for #{fruit}"
end

puts('-----------------------------------------------------')

temperature = 30
case temperature
	when 0...20  # (0-19)
		puts "cold" # start_heater
	when 20...30 # (20-29)
		puts "moderate"
	else
		puts "hot" # drink_beer
end

puts('-----------------------------------------------------')

begin
	1 + "a"
rescue
p "errors" 	
end

def hello 
puts 1 + '2' 
rescue 
puts "error" 
end

puts('-----------------------------------------------------')

puts '1 is true in Ruby' if 1
puts '0 is also true in Ruby' if 0
puts 'The false is false in Ruby' if false
puts 'The nil is false in Ruby' if nil

puts '-----------------------------------------------------'
