
class Fraccion
attr_accessor :num, :denom
include Comparable 
   def gcd(x,y)
	y==0? x:  gcd(y,x%y) 
   end
   def lcm(x,y)
    z=x/gcd(x,y) *y
   end
  def initialize(n,d)
    raise TypeError, "El denominador no puede ser 0" if d.eql?0
    m=gcd(n,d)
    @num=n/m
    @denom=d/m
  end
  def to_s
    "#{@num}/#{@denom}"
  end
  def to_float
    @num.to_f/@denom.to_f
  end 
  def <=> (other)
     @num<=>other.num
     @denom<=>other.denom
  end 
  def abs
   x=(@num.to_f/@denom.to_f).abs
end 
  def reciprocal
    @denom/@num
  end 
 def -
   -@denom/@num
 end 
end
