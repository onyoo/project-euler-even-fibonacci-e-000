# Implement your procedural solution here!

# puts "Please define limit (the upper bound of your range):"
# bound = puts.strip.to_i

#creates an Fibonacci array that never reaches 4 mil.
def even_fibonacci_sum(bound)
  n = 2
  old = 1
  set = [1,2]
  while n + old < bound
    old, n = n, old + n
    set << n
  end
  set.select{|num| num%2 == 0}.reduce(:+)
end