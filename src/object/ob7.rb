 class A
  attr_accessor :x,:y
  def initialize(x,y)
    @x = x
    @y = y
  end
  def op(z)
    return A.new(@x + z.x,@y + z.y)
  end
end
 
class B
  attr_accessor :x,:y
  def initialize(x,y)
    @x = x
    @y = y
  end
  def op(z)
    return B.new(@x - z.x,@y - z.y)
  end
end
 
def o7
  a = A.new(1,2)
  b = B.new(3,4)
  c = a.op(b)
  return a.x
end
