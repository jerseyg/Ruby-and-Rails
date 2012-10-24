load 'db/ar.rb'
load 'model/ghost.rb'


puts "There are #{Ghost.count} ghosts in the db"
casper_the_friendly_ghost = Ghost.new

casper_the_friendly_ghost.first_name = "Casper"
casper_the_friendly_ghost.last_name = "McFadden"
casper_the_friendly_ghost.age = 476

puts casper_the_friendly_ghost.inspect

puts "The name of the ghost is #{casper_the_friendly_ghost.full_name}"
#casper_the_friendly_ghost.save

puts "There are #{Ghost.count} ghost(s) in the db"