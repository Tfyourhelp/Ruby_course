module Speak
  def speak()
    puts "hehe"
  end
end

module Speak1
  # include Speak
  def speak()
    puts "hoho"
  end
end

module Speak2
  include Speak
  prepend Speak1
  def self.speak()
    puts "haha"
  end
  
  
end

# Speak2.speak() 
# p Speak2.ancestors

# class Dog
#   include Speak
#   prepend Speak1

#   def speak(sound)
#     puts "Hehehe"
#   end

# end

# dog = Dog.new
# dog.speak('Go go!')
# p Dog.ancestors


# module Sleep
#   def sleep
#     puts "ZZZZZZZ!! 111"
#   end
# end

# class Dog
#   extend Sleep
# end

# i = [4, 5, 1, 2]
# subset = i[0..2]
# puts subset

age = 20
can_vote = age >= 18 ? "Yes" : "No"
puts "Can vote? #{can_vote}"
