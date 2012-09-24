a = [ 70, 65, 80, 85, 23]
b = [ 70, 65, 80, 85, 23, 45]

def random
randoms = Array.new
  (0...100000).each do |i|
   randoms << rand(1000)
  end
  randoms
end 

def sums(arraylist)
sum = 0.0
  arraylist.each do |i|
  sum += i
  end
sum
end


def means(arraylist)
sum = sums(arraylist)
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
    mean = means(arraylist)
     sum = 0
     arraylist.each do |value|
     sum += (value - mean)**2
     end
     sum / arraylist.size
end

def std_dev(arraylist)
Math.sqrt(variance(arraylist)).to_f
end

puts "Sample a: #{a.to_s}"
puts "Sample b: #{b.to_s}"
puts ""

puts "mean a: #{means(a)} & mean b: #{means(b)}"
puts "median a: #{median(a)} & median b: #{median(b)}"
puts "variance a: #{variance(a)} & variance b: #{variance(b)}"
puts "std_dev a: #{std_dev(a)} & std_dev b: #{std_dev(b)}"

puts ""

puts "The Mean: #{means(random).to_f}"
puts "The Median: #{median(random).to_f}"
puts "The Standard Deviation: #{std_dev(random).to_f}"

