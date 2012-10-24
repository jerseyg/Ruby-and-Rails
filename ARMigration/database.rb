load 'db/ar.rb'
load 'model/customer.rb'
load 'model/province.rb'


number_of_customers = Customer.count
puts "There Are #{number_of_customers} in my customers table"


all_customers = Customer.all

puts "Based on the array there are #{all_customers.size} cusomters"

puts "The first customer is #{all_customers[0].inspect}"

first_customer = Customer.first
last_customer = Customer.last

puts "The First customer is #{first_customer.name}"
puts "The Last customer is #{last_customer.name}"

a_customer = Customer.where('name LIKE "a%"').order(:city).limit(5)

a_customer.each { |c| puts c.name } 

winnipeg_customers = Customer.where(:city => 'Winnipeg')

puts "Number of winnipeg customers is #{winnipeg_customers.size}"


