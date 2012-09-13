
require 'date'
def parse_date(date)
  the_date = Time.now
  dates = Date.strptime(date, '%d-%m-%Y')
   y = dates.year
   m = dates.month
   d =dates.day
   age = the_date.year - y
   age -=1 if the_date.month < m
   puts y
end

parse_date('12-12-2012')

puts Time.now.to_date.year

