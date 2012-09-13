require 'digest/md5'

$md5_array = Array.new
$i = 0

def Types_of_hash string

md5 = Digest::MD5.hexdigest("#{string}")
    
  $md5_array << md5
  #end
 return $md5_array[$i]
 
 #{(time_end - time)*1000} milliseconds", $md5_array[$i]
 


end

#Loop the number of times you want to create the digests. See how long it takes to create it.
puts Types_of_hash "a"
puts Types_of_hash "2"
puts Types_of_hash "a"
puts Types_of_hash "2"
puts Types_of_hash "a"
puts Types_of_hash "2"





