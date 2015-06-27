class Calculator
  def initialize(x, y)
    @x = x
    @y = y
  end

  def add
    @x + @y
  end

  def subtract
    @x - @y
  end

end

calc = Calculator.new(20,11)
puts calc.add
puts calc.subtract
