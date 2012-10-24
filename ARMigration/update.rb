load 'db/ar.rb'
load 'model/customer.rb'
load 'model/province.rb'

customer_by_id = Customer.find(9000)

puts customer_by_id.inspect

customer_by_id.city = ""

puts customer_by_id.inspect

if customer_by_id.save
  puts "The customer was changed"
 else
  puts "There was a validation error when saving the customer"
 end
 
 a_customer = Customer.where('name LIKE "a%"').order(:city).limit(5)
 
 a_customer.each do |c|
 c.city = "Winnipeg"
 c.save
 puts "saved"
 end
