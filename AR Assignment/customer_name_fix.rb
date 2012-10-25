load 'ar.rb'

customers = Customer.all

customers.each do |customer| 
  names = customer.first_name.split(' ')
  customer.first_name = "#{names.first}"
  customer.last_name = "#{names.last}"
  #puts "First Name: #{names.first}"
  #puts "Last Name: #{names.last}"
  #customers.first_name
  #customers.last_name = names.last
  

########################WARNING!!!!###########################
#####################TAKES 50MIN TO COMPLETE################

  ####DISABLED TO NEVER RUN AGAIN!!!!#####

  #if (customer.save)
  #puts "The customer was updated."
  #else
  #puts "There was a validation error when saving the customer."
  #end
   ####DISABLED TO NEVER RUN AGAIN!!!!#####
end

