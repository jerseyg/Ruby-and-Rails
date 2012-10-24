class AddHouseIdToGhosts < ActiveRecord::Migration
	def self.up
		add_column :ghosts, :house_id, :integer
	end

	def self.down
		remove_column :ghosts, :house_id
	end

end
