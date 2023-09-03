module Cream  
  def cream?
    true
  end 
end

module Trig
  PI = 3.141592
  def Trig.sin(x) # def self.sin(x) method của module(class) --> method của class --> cho nên khi gọi không cần phải qua object
    puts "Calculate sin(#{x}): #{Math.sin(x)}"
  end
  def Trig.cos(x) # def self.cos(x)
    puts "Calculate cos(#{x}): #{Math.cos(x)}"
  end
end

module Converter
  def self.time_format(time)
    if time[8..9] == "PM"
      a = time[0..1].to_i + 12
      if a == 24
        a == "00"
      end
      puts a
      puts time
      time[0..1] = a.to_s
    end
    puts time
    time = time[0..-3]
  end
end




