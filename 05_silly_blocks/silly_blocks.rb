def reverser
  yield.split(" ").map {|i| i.reverse}.join(" ")
end

def adder(num = 1)
  num + yield
end

def repeater(num = 1)
  num.times do
    yield
  end
end