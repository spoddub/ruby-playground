def convert(strings)
  strings.sort.filter {|string| string.end_with?('?')}.map(&:downcase)
end