load 'ar.rb'

def gets_yes_no(question_prompt)
  begin
    print question_prompt + " (y/n): "
  end until ((response = gets.chomp) == 'y' || response == 'n')
  response == 'y'
end



if (gets_yes_no("Show products low on stock?"))
	if(gets_yes_no("Show expensive products?"))

	product_less_than_5 = Product.where('stock_quantity < 5')	
	puts
	puts "There are #{product_less_than_5.count} products low on stock"
	product_less_than_5.each do |products|
	puts "#{products.name} - Stock remaining: #{products.stock_quantity}"
	end
	puts
		price_greater_than_50 = Product.where('price > 50')
	puts "There are #{price_greater_than_50.count} more expensive than $50"
	price_greater_than_50.each do |price|
	puts "#{price.name} - Price #{price.price}"
	end

	else
	product_less_than_5 = Product.where('stock_quantity < 5')	
	
	puts "There are #{product_less_than_5.count} products low on stock"
	product_less_than_5.each do |products|
	puts "#{products.name} - Stock remaining: #{products.stock_quantity}"
	end

	end

else
	if(gets_yes_no("Show expensive products?"))
	price_greater_than_50 = Product.where('price > 50')
	puts "There are #{price_greater_than_50.count} more expensive than $50"
	price_greater_than_50.each do |price|
	puts "#{price.name} - Price #{price.price}"
	end
	end
end
