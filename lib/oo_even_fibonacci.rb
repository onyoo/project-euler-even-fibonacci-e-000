# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    @n = 2
    @old = 1
    @set = [1,2]
    while @n + @old < @limit
      @old, @n = @n, @old + @n
      @set << @n
    end
    @set.select{|num| num%2 == 0}.reduce(:+)
  end
end
