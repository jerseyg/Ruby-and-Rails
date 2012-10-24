load 'db/ar.rb'
load 'model/product.rb'

apple_soup = Product.new

apple_soup.name = "Apple soup"
apple_soup.description = "Delicious soup made from rare apples"
apple_soup.price = 98.13
apple_soup.stock_quantity = 32

if apple_soup.save

	puts "we saved the apple soup to the database"

else
	puts " There was an error saving the soup"
	apple_soup.errors.messages.each do |column, errors|
		errors.each do |error|
			puts "This #{column} #{error}"
			end
	end
		
end

shake_weight = Product.new(:name => "Shake Weight",
						   :description => "A Weight you can shake",
						   	:price => 87.45,
						   	:stock_quantity => 10)

if shake_weight.save

	puts "we saved the shake Weight to the database"

else
	puts " There was an error saving the weight"
	shake_weight.errors.messages.each do |column, errors|
		errors.each do |error|
			puts "This #{column} #{error}"
			end
	end

money_tree = Product.create(:name => "Money Tree",
							:description => "A Tree made of money",
							:price => 993.95,
							:stock_quantity => 5)

if money_tree.save

	puts "we saved the money_tree to the database"

else
	puts " There was an error saving the tree"
	money_tree.errors.messages.each do |column, errors|
		errors.each do |error|
			puts "This #{column} #{error}"
			end
end
end
		
end