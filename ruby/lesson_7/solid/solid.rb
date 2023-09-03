module Operation
  def operation
    raise "This method is not overidden"
  end
end

class Add
  include Operation
  def initialize(a, b)
    @a = a
    @b = b
  end

  def operation()
    @a + @b
  end
end

class Subtract
  include Operation
  def initialize(a, b)
    @a = a
    @b = b
  end

  def operation()
    @a - @b
  end
end

class Calculator
  def self.calculate_and_print(operation)
    result = operation.operation
    puts "The result is #{result} "
  end
end

add = Add.new(5, 7)
subtract = Subtract.new(5, 9)
Calculator.calculate_and_print(add)
Calculator.calculate_and_print(subtract)