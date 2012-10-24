load 'db/ar.rb'
load 'model/customer.rb'
load 'model/province.rb'

iris = Customer.find(9000)

iris_prov = iris.province

puts "My Customer #{iris.name} live in the province of #{iris_prov.name}"

puts iris_prov.name

quebec = Province.find(11)  

puts "In the province of Quebec we have #{quebec.customers.size} customers."
