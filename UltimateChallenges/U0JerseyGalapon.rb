# WEBD-2000 - Ultimate Challenge Zero
#
# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.

carl  = {
          :toast => 'cosmos',
          :punctuation => [ ',', '.', '?' ],
          :words => [ 'know', 'for', 'we']
        }

sagan = [
          { :are => 'are', 'A' => 'a' },
          { 'waaaaaay' => 'way', :th3 => 'the' },
          'itself',
          { 2 => ['to']}
        ]

# Here is an example of building a setence out of array/hash pieces.
example = [ 'test', 'a', 'is']
time    = { :that => 'This', :period => '.'}
puts "#{time[:that]} #{example[2]} #{example[1]} #{example[0]}#{time[:period]}"


#U0 1 line puts
carls_word = carl[:words]
carls_punc = carl[:punctuation]
sagan_are = sagan[0][:are]
sagan_way = sagan[1]
sagan_cos = sagan[3]
puts "#{carls_word[2]} #{sagan_are} #{sagan_are["A"]} #{sagan_way["waaaaaay"]} #{carls_word[1]} #{sagan_way[:th3]} #{carl[:toast]} #{sagan_cos[2][0]} #{carls_word[0]} #{sagan[2]}#{carls_punc[1]}"
