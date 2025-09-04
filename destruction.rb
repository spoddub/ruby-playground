def convert(data)
  new_data = []
  data.each() do |list|
    first, second, third = list
    new_data << [first, third]
    end
  new_data
end