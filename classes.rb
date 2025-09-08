class Point
  attr_reader :x, :y
  def initialize(x, y)
    @x = Float(x)
    @y = Float(y)
    freeze
  end
  def distance_to(other_point)
    dx = other_point.x - x
    dy = other_point.y - y
    Math.hypot(dx, dy)
  end
  def to_s
    "[#{x}, #{y}]"
  end
end

class Segment
  attr_reader :a, :b
  def initialize(a, b)
    @a = a
    @b = b
    freeze
  end
  def length
    a.distance_to(b)
  end
  def midpoint
    Point.new((a.x + b.x) / 2.0, (a.y + b.y) / 2.0)
  end

  def to_s
    "[#{a}, #{b}]"
  end
end