load 'db/ar.rb'
load 'model/customer.rb'
load 'model/province.rb'


customer_by_id = Customer.find(9000)

puts customer_by_id.inspect