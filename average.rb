def average(a, b)
  sum = 0
  quantity = 0

  a, b = [a, b].minmax
  a.upto(b) do |i|
    sum += i
    quantity += 1
  end

  sum.fdiv(quantity)
end