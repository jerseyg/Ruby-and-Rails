load 'db/ar.rb'
load 'model/product.rb'

products = Product.where('stock_quantity > 40')

products.each do |p|
	puts "Updating the #{p.name} stock quantity from #{p.stock_quantity} to #{p.stock_quantity+1}"
	p.stock_quantity += 1
	p.save
	puts "Updated #{p.name}"
	puts ""
end