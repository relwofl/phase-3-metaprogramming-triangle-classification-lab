class Triangle
  # write code here
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a 
    @b = b
    @c = c
  end

  def kind
    val_tri
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else 
      :scalene
    end
  end

  def sides?
    [a,b,c].all?(&:positive?)
  end

  def ineq?
    a + b > c && a + c > b && b+c >a
  end

  def val_tri
    raise TriangleError unless sides? && ineq?
  end

  class TriangleError < StandardError
  end
end
