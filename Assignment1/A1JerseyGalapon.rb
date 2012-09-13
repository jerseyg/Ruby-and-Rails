#Jersey Galapon
#Sept 7, 2012
#Generate Invoices for customers

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

orders_by_customer_id.each do |cust_id, orders|
#init subtotal outside the orders.each block
  subtotal = 0

  #put customer information into variables for simple puts
  customer_name = customers_by_id[cust_id][:name]
  customer_address = customers_by_id[cust_id][:address]
  customer_city = customers_by_id[cust_id][:city]
  customer_province = customers_by_id[cust_id][:province]

  puts ""
  puts "Invoice for #{customer_name}"
  puts customer_address
  puts "#{customer_city}, #{customer_province}"
  puts ""

  orders.each do |order|
  #put product information into variables for simple puts
    order_amount = order[:quantity]
    products = products_by_id[order[:product_id]][:name]
    product_price = products_by_id[order[:product_id]][:price]
    item_price = order_amount * product_price

    puts "#{products} .......................... #{order_amount} x #{currency(product_price)} = #{currency(item_price)}"
    subtotal += item_price

  end

  p_tax = subtotal * Sales_tax_by_province[customer_province]
  g_tax = subtotal * GST
  grand_total = subtotal + p_tax.round(2) + g_tax
  #rounded_p_tax variable is for using the .round(2)
  rounded_p_tax = Sales_tax_by_province[customer_province] * 100
  if p_tax == 0
    puts ""
    puts "Sub Total                : #{currency(subtotal)}"
    puts "Gross Sales Tax (#{GST* 100}%)   : #{currency(g_tax)}"
    puts "Grand Total              : #{currency(grand_total)}"
  else
    puts ""
    puts "Sub Total                : #{currency(subtotal)}"
    puts "Provincial Tax (#{rounded_p_tax.round(2)}%)    : #{currency(p_tax)} "
    puts "Gross Sales Tax (#{GST* 100}%)   : #{currency(g_tax)}"
    puts "Grand Total              : #{currency(grand_total)}"
  end
end
