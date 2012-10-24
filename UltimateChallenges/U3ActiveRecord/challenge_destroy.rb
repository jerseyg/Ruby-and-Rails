load 'db/ar.rb'
load 'model/product.rb'

apple_soup = Product.where(:name => 'Apple Soup').first

apple_soup.destroy  unless apple_soup.nil?
