class Customer < ActiveRecord::Base
    validates_presence_of :name, :email, :city
end
