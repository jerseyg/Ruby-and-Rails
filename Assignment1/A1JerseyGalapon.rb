orders_by_customer_id = {
        101 => [
           { :product_id => 13, :quantity => 2  },
           { :product_id => 35, :quantity => 16 },
           { :product_id => 11, :quantity => 3  }],
        24 => [
           { :product_id => 11, :quantity => 3  },
           { :product_id => 35, :quantity => 4  }],
        36 => [
           { :product_id => 25, :quantity => 17 },
           { :product_id => 42, :quantity => 2  },
           { :product_id => 35, :quantity => 7  }]
}

products_by_id = {
        11 => { :name => "teddy bear", :price => 14.23 },
        25 => { :name => "toy ghosts", :price => 4.34  },
        13 => { :name => "giant newt", :price => 56.00 },
        42 => { :name => "sandcastle", :price => 12.45 },
        35 => { :name => "shoe phone", :price => 86.00 }
}

customers_by_id = {
        101 => { :name => 'John Smith', :address => '128 Good St.', :city => 'Winnipeg', :province => 'MB' },
        24  => { :name => 'Ralph Woodhorse', :address => '67 Pylon Way', :city => 'Calgary', :province => 'AB' },
        36  => { :name => 'Mary Contra', :address => '342 Modem Drive', :city => 'Regina', :province => 'SK' }
}

Sales_tax_by_province = { 'MB' => 0.07, 'AB' => 0, 'BC' => 0.07, 'SK' => 0.05 }

GST = 0.05

def currency amount
 sprintf("$%.2f",amount)
end





#Customer Information
john = customers_by_id[101]
raplh = customers_by_id[24]
mary = customers_by_id[36]
#Added customers arrays
custs = [john, raplh, mary]
#Added orders_by_customers_id to array 
array = [101, 24, 36]
orders = orders_by_customer_id
# "#{orders[array[x]][x][:product_id]}"
#loop variable i
i = 0
x = 0
while i < custs.length do
  puts "Invoice for #{custs[i][:name]}" 
  puts "#{custs[i][:address]}"
  puts "#{custs[i][:city]}, #{custs[i][:province]}" 
  
  puts ""
  
  puts "#{products_by_id[orders[array[i]][0][:product_id]][:name]} ......................"
  puts "#{products_by_id[orders[array[i]][1][:product_id]][:name]} ......................"
  #puts "#{orders[array[i]][2][:product_id]}"
  puts ""
   
  i += 1
end

