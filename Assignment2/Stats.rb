a = [ 70, 65, 80, 85, 23]
b = [ 70, 65, 80, 85, 23, 45]


def sum(arraylist)
sum = 0.0
  arraylist.each do |i|
  sum += i
  end
sum
end


def means(arraylist)
sum = sum(arraylist)
total = (sum / arraylist.size).to_f
total.round(2)
end

def median(arraylist)
sort_array = arraylist.sort
middle = (sort_array.size / 2)
  if middle.even?
  sort_array[middle]
    else
    sort_array[middle-1,2].inject(:+).to_f / 2
  end
end

def variance(arraylist)

    sums = sum(arraylist)
    mean = means(arraylist)
    sums { |i| ( i - mean )**2 } / arraylist.size


end


puts means(a)
puts means(b)
puts median(a)
puts median(b)
puts variance(a)
