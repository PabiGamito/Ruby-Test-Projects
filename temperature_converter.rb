puts "Do you want to convert: "
puts "1) C to F "
puts "2) F to C"
conversion=gets.chomp

if conversion=="1" or conversion=="C to F" then
  puts "Please enter the temperature in C"
  c=gets.chomp.to_i
  puts "#{c} Degrees is equivalent to #{(c*9)/5+32}F"
elsif conversion=="2" or conversion=="F to C" then
  puts "Please enter the temperature in F"
  f=gets.chomp.to_i
  puts "#{f} Degrees is equivalent to #{((f-32)*5)/9}C"  
else
  puts "Sorry but you have answered the question invalidly."
end
