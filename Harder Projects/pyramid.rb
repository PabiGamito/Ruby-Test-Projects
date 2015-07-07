#Creates the method for the mario pyramid
def pyramid
  puts "Hello,"
  puts "Please enter the height you want the pyramid to be. It can not be taller than 23 blocks."
  height=gets.chomp.to_i
  
  #Makes sure the number given is between 0, exclued and 23, included.
  while height<=0 or height>23
    puts "That is not a valid number."
    puts "Please enter the height you want the pyramid to be. It can not be taller than 23 blocks."
    height=gets.chomp.to_i
  end
  
  #Defines the variables
  number_of_spaces=height-1
  number_of_blocks=1
  
  #Creates the pyramid
  while number_of_spaces>=0
    #prints the first half of the pryramid (left)
    number_of_spaces.times {print "  "}
    number_of_blocks.times{print "#"}
    #creates a space in between the left and right side of the pyramid
    print " "
    #prints the second half of the pyramid (right)
    number_of_blocks.times{print "#"}
    number_of_spaces.times {print " "}
    #goes to new line so nest time it loops it creats the next level.
    print "\n"
    #adds 1 to the number of blocks and removes a space for the next time it loops.
    number_of_spaces=number_of_spaces-1
    number_of_blocks=number_of_blocks+1
  end
end

#calls the method pyramid to create a mario pyramid to the desiered hieght.
pyramid