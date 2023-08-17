def hello_world
  puts 'welcome'
  yield(5) if block_given?
end
hello_world {|i| puts " Number #{i}" }
