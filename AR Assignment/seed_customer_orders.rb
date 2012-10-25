load 'ar.rb'


customer = []
id = 0
(3..5).each do |i|
id += i
customer << Customer.where("province_id = #{id}").first
end

customer.each do |customers|
orders = customers.orders.build
orders.status = 'new'
orders.gst_rate = customers.province.gst
orders.hst_rate = customers.province.hst
orders.pst_rate = customers.province.pst
orders.save

4.times do |i|
	product = Product.where("id = #{rand(Product.first.id..Product.last.id)}").first
	line_item1 = orders.line_items.build
	line_item1.product = product
	line_item1.quantity = rand(10..50)
	line_item1.price = product.price
	line_item1.save
end

end

a_customer = customer.last

orders = a_customer.orders.build
orders.status = 'new'
orders.gst_rate = a_customer.province.gst
orders.hst_rate = a_customer.province.hst
orders.pst_rate = a_customer.province.pst
orders.save

4.times do |i|
	product = Product.where("id = #{rand(Product.first.id..Product.last.id)}").first
	line_item1 = orders.line_items.build
	line_item1.product = product
	line_item1.quantity = rand(10..50)
	line_item1.price = product.price
	line_item1.save
end




