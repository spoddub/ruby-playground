def leap_year?(year)
  (year % 400).zero? || ((year % 4).zero? && !(year % 100).zero?)
end