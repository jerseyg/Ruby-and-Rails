load 'db/ar.rb'
load 'model/customer.rb'
load 'model/province.rb'



#wally = Customer.new(:name => "Wally Glutton",
                   # :email => "wally@mailinator.com")
                     
#wally.save
#puts wally.inspect                     


#jane = Customer.create( :name => "Jane Smith",
 #                        :email => "jsmith@mailinator.com")

#puts jane.inspect


bobby = Customer.new(:name => "Bobby McGee",
                      :email => "BMcGee@mailinator.com",
                        :city => "Winnipeg")

if bobby.save
puts "Bobby was saved to the database table"
puts bobby.inspect
else
puts "there was an error saving bobby to the database"
#Makes nice looking errors
bobby.errors.messages.each do |column, errors|
  errors.each do |error|
  puts "The #{column} property #{error}"
  end
  
  end
end