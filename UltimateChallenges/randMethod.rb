#Jersey Galapon
#September 7 2012
#Generates 20 random numbers

def random
  (0...20).each do |i|
  randoms = Array.new
   randoms << rand(100)
   puts randoms
  end
end 

random