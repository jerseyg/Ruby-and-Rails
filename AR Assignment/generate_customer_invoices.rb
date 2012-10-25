load 'ar.rb'

def currency amount
  sprintf("$%.2f",amount)
end

customers_with_orders = Customer.includes('orders').where('orders.id IS NOT NULL').where('orders.status = "new"')

customers_with_orders.each do |customers|
	subtotal = 0
	id = customers.id
	puts
	puts "Invoice for #{customers.first_name} #{customers.last_name}"
    puts "#{customers.address}"
    puts "#{customers.city}, #{customers.province.name}"
    puts 

    orders = Order.where("customer_id = #{id}")

    orders.each do |order|

    	order_id = order.id
    	line_item = LineItem.where("order_id = #{order_id}")
    	order.products.each do |products|
    		    order_amount = products.stock_quantity
			    product = products.name
			    product_price = products.price
			    item_price = order_amount * product_price

    puts "#{product} .......................... #{order_amount} x #{currency(product_price)} = #{currency(item_price)}"
    subtotal += item_price


    	end
    	        	    puts ""
    puts "Sub Total:   #{currency(subtotal)}"
 
end
    #if(order.pst_rate.to_f != 0.0)
     # puts "PST (#{sprintf("%.2f", order.pst_rate.to_f * 100)}%): #{currency(order.pst_rate.to_f * subtotal)}"
    #end
    
    #if(order.gst_rate.to_f != 0.0)
    #  puts "GST (#{sprintf("%.2f", order.gst_rate.to_f * 100)}%): #{currency(order.pst_rate.to_f * subtotal)}"
    #end
    
    #if(order.hst_rate.to_f != 0.0)
     # puts "HST (#{sprintf("%.2f", order.hst_rate.to_f * 100 )}%): #{currency(order.hst_rate.to_f * subtotal)}"
    #end
    
    #puts "Grand Total : #{currency(subtotal + (order.pst_rate.to_f * subtotal) + (order.gst_rate.to_f * subtotal) + (order.hst_rate.to_f * subtotal))}"
    #puts ""
  #end
 

end