file = File.open("sample.txt", "w")
  file.puts "Hello, this is line 1."
  file.puts "This is line 2."
  file.puts "And this is line 3."
file.close

contents = File.read("sample.txt")
# contents = file.read
puts contents
file.close