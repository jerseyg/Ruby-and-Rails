#Jersey Galapon

sub_total = 5
GST = 0.05
PST = 0.07

amount1 = PST * sub_total
amount2 = GST * sub_total

grand_total = amount1 + amount2 +  sub_total

puts "Subtotal $#{sprintf("%.2f:", sub_total)}"
puts "PST $#{amount1} - #{PST * 100}%"
puts "GST $#{amount2} - #{GST * 100}%"
puts "Grand Tota $#{grand_total}"




