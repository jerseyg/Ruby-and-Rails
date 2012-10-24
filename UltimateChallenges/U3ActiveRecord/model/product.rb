class Product < ActiveRecord::Base
	validates_presence_of :name, :price, :description, :stock_quantity
	validates_uniqueness_of :name
end