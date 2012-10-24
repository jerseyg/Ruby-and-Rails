load 'ar.rb'

customers = Customer.all

customers.each do |customer| 
  names = customer.first_name.split(' ')
  puts "First Name: #{names.first}"
  puts "Last Name: #{names.last}"

  puts "Email: #{customer.email}"
  puts "Address: #{customer.address}, #{customer.city}"
  puts
end
