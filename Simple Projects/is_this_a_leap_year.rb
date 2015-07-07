puts "Put in a year to check if it was or is going to be a leap year:"
year=gets.chomp

#REUSABLE METHOD that checks if it is a number
def is_number?(string)
  true if Float(string) rescue false #need to understand this
end

#While the method that checks if it is a number doesn't return true asks to re-enter a year
while is_number?(year)!=true
  puts "Sorry but that is not a year. Please renter a year:"
  year=gets.chomp
end

#Turns the year variable into an integer to be able to use it later
year=year.to_i
if year%4==0 then
  puts "The year #{year} is indeed a leap year."
else
  puts "The year #{year} is sadly not a leap year."
end