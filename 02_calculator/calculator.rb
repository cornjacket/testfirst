def add(a, b)
  a+b
end

def subtract(a, b)
  a-b
end

def sum(array)
  array.inject(0) {|sum,x| sum + x }
  #array.map(&:to_i).reduce(:+)
end

def multiply(array)
  array.inject {|product, x| product*x }
end

def power(a, b)
  a**b
end

def factorial(a)
  if (a == 0)
    1
  else
    array = (1..a).to_a
	array.inject {|product, x| product*x }
  end
end