require 'date'
def next_day()
  next_d = Date.today.next
  Time.new(next_d.year, next_d.month, next_d.day)
end