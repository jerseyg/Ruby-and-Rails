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


$i = 0
#Added key arrays
custs = customers_by_id.keys
orderid = orders_by_customer_id 
orders = orderid.keys
products = products_by_id.keys
#bunch of periods... 
BOP = " ...................... "
while $i < custs.length do
 
  
  
  puts "Invoice for #{customers_by_id[custs[$i]][:name]}"
  puts customers_by_id[custs[$i]][:address]
  puts "#{customers_by_id[custs[$i]][:city]} #{customers_by_id[custs[$i]][:province]}"
  puts ""
  
  if $i == 1
   item_desc = orderid[orders[$i]][0][:product_id]
   item_desc2 = orderid[orders[$i]][1][:product_id]
      puts "#{products_by_id[item_desc][:name]} #{BOP}" + 
           "#{orderid[orders[$i]][0][:quantity]} * #{currency(products_by_id[item_desc][:price])}"
      puts "#{products_by_id[item_desc2][:name]} #{BOP}" + 
           "#{orderid[orders[$i]][1][:quantity]} * #{currency(products_by_id[item_desc2][:price])}"
  else
   item_desc = orderid[orders[$i]][0][:product_id]
   item_desc2 = orderid[orders[$i]][1][:product_id]
   item_desc3 = orderid[orders[$i]][2][:product_id]
      puts "#{products_by_id[item_desc][:name]} #{BOP} #{orderid[orders[$i]][0][:quantity]} * #{currency(products_by_id[item_desc][:price])}"
      puts "#{products_by_id[item_desc2][:name]} #{BOP} #{orderid[orders[$i]][1][:quantity]} * #{currency(products_by_id[item_desc2][:price])}"
      puts "#{products_by_id[item_desc3][:name]} #{BOP} #{orderid[orders[$i]][2][:quantity]} * #{currency(products_by_id[item_desc3][:price])}"
  end
  
  $i += 1
end

