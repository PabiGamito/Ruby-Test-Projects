#-------------Define all Methods for the equation solver-------------#

#Method that check the input is a number
def is_num?(string)
  true if Float(string) rescue false
end

#Method that removes the variable they have from the array of variable and ask the value of the arrays that are left.

#Equation Selecter Need to make it detect equation
puts "Is your equation a:"
puts "1) Quadratic Equation (ax^2+bx+c=0)"
puts "2) Linear Equation (y=mx+b)"
puts "3) Absolute Equation (y=x)"
puts "Please enter the name of the equation you want to solve:"
answer=gets.chomp.downcase

#--------------------------Quadratic Equation (ax^2+bx+c=0)--------------------------#


if answer == "quadratic" or answer == "quadratic equation" or answer== "1" then
  puts "Remember, a quadratic equation is in the form 'y=ax^2+bx+c'"
  puts "Which is needed for the answer"
  puts "1) x"
  puts "2) y"
  puts "3) roots"
  variableNeeded=gets.chomp.downcase
    
  if variableNeeded == "x" or variableNeeded == "1" then
    puts "What is y equal to?"
    y = gets.chomp.to_i
    puts "What is a equal to?"
    a = gets.chomp.to_i
    puts "What is b equal to?"
    b = gets.chomp.to_i
    puts "What is c equal to?"
    c = gets.chomp.to_i
    
    x = (b*b - 4*a*c) #Determines X from the given information
    puts "Therefore, x is equal to #{x}."
  
  elsif variableNeeded == "y" or variableNeeded == "2" then
    puts "What is x equal to?"
    x = gets.chomp.to_i
    puts "What is a equal to?"
    a = gets.chomp.to_i
    puts "What is b equal to?"
    b = gets.chomp.to_i
    puts "What is c equal to?"
    c = gets.chomp.to_i
    
    y = (a*x*x + b*x + c) #Determines Y from the given variables
    puts "Therefore, y is equal to #{y}."
    
  elsif variableNeeded == "roots" or variableNeeded == "3" then
   puts "What is a equal to?"
   a = gets.chomp.to_i
   puts "What is b equal to?"
   b = gets.chomp.to_i
   puts "What is c equal to?"
   c = gets.chomp.to_i
    
   if (b*b - 4*a*c)<0 then
     puts "It is not possible to calculate the root of this equation since b^2 - 4*a*c < 0"
    
   else
     root1=(-b+Math.sqrt(b*b - 4*a*c))/(2*a)
     root2=(-b-Math.sqrt(b*b - 4*a*c))/(2*a)
     puts "Your two roots are: \n-X=#{root1} \n-X=#{root2}"
   end
    
  else
    puts "Sorry, I dont understand what you gave me. Ending Program."
  end

#--------------------------Linear Equation (y=mx+b)--------------------------#

elsif answer == "linear" or answer == "linear equation" or answer== "2"
    puts "Remember a linear equation is in the form 'y=mx+b'"
    puts "Which variable do you need?"
    puts "1) x"
    puts "2) y"
    puts "3) m"
    puts "4) b"
    variableNeeded = gets.chomp.downcase
    
    if variableNeeded == "x" or variableNeeded == "1" then #GETS VARIABLES THAT ARE NOT X
     puts "What is y equal to?"
     y = gets.chomp.to_i #Gets Y
     puts "What is the slope (m) of the equation?"
     m = gets.chomp.to_i #Gets M
     puts "What is b equal to?"
     b = gets.chomp.to_i #Gets B
     
     x=(y-b)/m #Determines X from the given information
     puts "Therefore, x is equal to #{x}."
    
    elsif variableNeeded == "y" or variableNeeded == "2" then #GETS VARIABLES THAT ARE NOT Y
     puts "What is x equal to?"
     x=gets.chomp.to_i #Gets X
     puts "What is the slope (m) of the equation?"
     m=gets.chomp.to_i #Gets M
     puts "What is b equal to?"
     b=gets.chomp.to_i #Gets B
     
     y=m*x+b #Determines Y from the given information
     puts "Therefore, y is equal to #{y}."
    
    elsif variableNeeded == "m" or variableNeeded == "3" then #GETS THE VARIABLE THAT ARE NOT M
     puts "What is y equal to?"
     y=gets.chomp.to_i #Gets Y
     puts "What is x equal to?"
     x=gets.chomp.to_i #Gets X 
     puts "What is b equal to?"
     b=gets.chomp.to_i #Gets B
     
     m=(y-b)/x #Determines M from the given information
     puts "Therefore, m is equal to #{m}"
    
    elsif variableNeeded == "b" or variableNeeded == "4" then #GETS THE VARIABLES THAT ARE NOT B
     puts "What is y equal to?"
     y=gets.chomp.to_i #Gets Y
     puts "What is x equal to?"
     x=gets.chomp.to_i #Gets X
     puts "What is the slope (m) of the equation?"
     m=gets.chomp.to_i #Gets M
     
     b=y-m*x #Determines B from the given information
     puts "Therefore, b is equal to #{b}"
    
    else
      puts "Sorry, I dont understand what you gave me. Ending Program." #In case someone doesnt know how to type a single letter...
    end
  
#--------------------------Absolute Value Equation--------------------------# 

elsif answer == "absolute" or answer == "absolute equation" or answer == "3" then
   puts "Remember a linear equation is in the form 'y=|x-a|+b'"
   puts "Which variable do you need?"
   puts "1) y"
   puts "2) x"
   puts "3) a"
   puts "4) b"
   variableNeeded = gets.chomp.downcase
   
  if variableNeeded == "x" or variableNeeded == "2" then #GETS VARIABLES THAT ARE NOT X
     puts "What is y equal to?"
     y = gets.chomp.to_i #Gets Y
     puts "What is a equal to?"
     a = gets.chomp.to_i #Gets A
     puts "What is b equal to?"
     b = gets.chomp.to_i #Gets B
     
     x1 = y - a - b
     x2 = -y + a +b #Determines X from the given information
     
     if y = (x1-a).abs + b and y = (x2-a).abs + b  then
       puts "Therefore, x is equal to #{x1} and #{x2}"
     elsif y = (x1-a).abs + b then
       puts "Therefore, x is equal to #{x1}"
     elsif y = (x2-a).abs + b then
       puts "Therefore, x is equal to #{x2}."
     else
       puts "Sorry, but I cant solve this."
     end
    
  elsif variableNeeded == "y" or variableNeeded == "1" then #GETS VARIABLES THAT ARE NOT Y
     puts "What is x equal to?"
     x=gets.chomp.to_i #Gets X
     puts "What is a equal to?"
     a=gets.chomp.to_i #Gets A
     puts "What is b equal to?"
     b=gets.chomp.to_i #Gets B
     
     y = (x - a).abs + b #Determines Y from the given information
     puts "Therefore, y is equal to #{y}."
    
  elsif variableNeeded == "a" or variableNeeded == "3" then #GETS THE VARIABLES THAT ARE NOT A
     puts "What is y equal to?"
     y = gets.chomp.to_i #Gets Y
     puts "What is x equal to?"
     x = gets.chomp.to_i #Gets X
     puts "What is b equal to?"
     b = gets.chomp.to_i #Gets B
     
     a1 = y - x - b
     a2 = y + x - b #Determines A from the given information
     
     if y = (x-a1).abs + b and y = (x-a2).abs + b  then
       puts "Therefore, x is equal to #{a1} and #{a2}"
     elsif y = (x-a1).abs + b then
       puts "Therefore, x is equal to #{a1}"
     elsif y = (x2-a2).abs + b then
       puts "Therefore, x is equal to #{a2}."
     else
       puts "Sorry, but I cant solve this."
     end
    
  elsif variableNeeded == "b" or variableNeeded == "4" then #GETS THE VARIABLES THAT ARE NOT B
     puts "What is y equal to?"
     y=gets.chomp.to_i #Gets Y
     puts "What is x equal to?"
     x=gets.chomp.to_i #Gets X
     puts "What is a equal to?"
     a=gets.chomp.to_i #Gets A
     
     b = y - (x - a).abs #Determines B from the given information
     puts "Therefore, b is equal to #{b}"
    
  else
     puts "Sorry, I dont understand what you gave me. Ending Program." #In case someone doesnt know how to type a single letter...
  end

else
  Puts "Sorry, but you messed up... Please answer correctly." #CHECK THIS DOESN"T APPEAR IF YOU TYPE FOR EXAMPLE 45 at the begining.
end
