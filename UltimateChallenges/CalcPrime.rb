def prime number
  if number <= 1
    return "not prime"
  else
    2.upto(Math.sqrt(number).to_i) do |x|
      if number % x == 0
        return "not prime"
      end
    end
    return "PRIME"
  end
end

(0...1000).each do |i|
  puts "#{i} #{prime i}"
end
