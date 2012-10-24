load 'db/ar.rb'
load 'model/product.rb'
load 'model/Categories.rb'

first_product = Product.first

puts first_product.inspect

#Product id: 
#name: 
#description:  
#price:  
#stock_quantity: , category_id: 
#created_at:
#updated_at: 

puts "There are a total of #{Product.count} products in my table."

cheap_product_count = Product.where('price < 10').count
puts "There are a total of #{cheap_product_count} products under $10"


c_pricey_product = Product.where('price > 10').where('name Like "C%"')
puts "There are a total of #{c_pricey_product.count} products over $10 that start with a c"

c_pricey_product.each do |value|
	puts value.name
end


puts "There are a total of #{c_pricey_product.count} products over $10 that start with a c"

low_stock_product = Product.where('stock_quantity < 5').count

puts "There are a total of #{low_stock_product} that are low in stock"


first_category = Categories.first

puts first_category.inspect

puts "The Name of Category Id 1 is #{first_category.name} and is linked to Chai"