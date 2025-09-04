def merge_all(*data)
  result = {}
  data.each() do |hash|
    result = result.merge(hash)
  end
  result
end