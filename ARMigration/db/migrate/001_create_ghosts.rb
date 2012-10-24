class CreateGhosts < ActiveRecord::Migration

	#Describe the creation of the ghosts table
	def self.up
		#Automaticaally the migration with add an
		#id column. Auto-incrementing primary key
		create_table :ghosts do |t|
			t.string :first_name
			t.string :last_name
			t.integer :age
			#Create our created_at and updated_at datetime columns
			t.timestamps
		end
	end

	#SQL:
	#CREATE TABLE 'ghosts' (
	# first_name VARCHAR(255)
	# last_name VARCHAR(255)
	# age INT(11)
	# updated_at DATETIME,
	# created_at DATETIME,
	# id INT(11) NOT NULL,
	# PRIMARY KEY (id);
	# )

	#Describe how to undo the self.up method
	def self.down
	drop_table :ghosts
	end

	#SQL:
	#DROP TABLE 'ghosts';

end