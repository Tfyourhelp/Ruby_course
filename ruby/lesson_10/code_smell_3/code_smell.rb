class Calculator
  attr_accessor :length, :width, :radius

  def display_area(area)
    puts "Area value is #{area}"
  end
end

class Rectangle

  def initialize(length, width)
    @calculator = Calculator.new()
    @length = length
    @width = width
  end
  
  def call
    area = calculate_area
    @calculator.display_area(area)
  end
  
  def calculate_area
    @length * @width
  end
end

class Circle

  def initialize(radius)
    @calculator = Calculator.new()
    @radius = radius
  end

  def call
    area = calculate_area
    @calculator.display_area(area)
  end

  def calculate_area
    Math::PI * @radius **2
  end
end

class Triangle

  def initialize(base, height)
    @calculator = Calculator.new()
    @length = base
    @width = height
  end

  def call
    area = calculate_area
    @calculator.display_area(area)
  end

  def calculate_area
    0.5 * @length * @width
  end
end

circle = Circle.new(1)
circle.call
circle = Rectangle.new(1,1)
circle.call
circle = Triangle.new(1,1)
circle.call