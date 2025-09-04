def intersection(arr1, arr2)
  new_array = []
  arr1.each do |item|
    new_array << item if arr2.include? item
    end
  new_array
end