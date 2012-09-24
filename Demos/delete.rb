load 'db/ar.rb'
load 'model/customer.rb'
load 'model/province.rb'

wally = Customer.where(:name => 'Wally Glutton').first

wally.destroy

puts wally.inspect