a=18
b=2
c=Math.sqrt(a/b)
puts c*3

puts "Is your equation a:"
puts "1) Quadratic under the form ax^2+bx+c=0?"
puts "2) Linear equation under the form y=ax+b"
puts "3) Constant equation under the form y=x"
puts "Please enter the number of the equation you want to solve:"
equation=gets.chomp

#Quadratic Equation
if equation==1 then
  puts "Remember a quadratic equation should be under the form ax^2+bx+c=0"
  puts "Please enter a:"
  a = gets.chomp  
  a = a.to_i
  puts "Please enter b:"
  b = gets.chomp  
  b = b.to_i
  puts "Please enter c:"
  c = gets.chomp  
  c = c.to_i
  x=(b*b-4*a*c)
if a==0
  puts "This is a linear equation & the answer to this equation is: x=#{-c/b}"
elsif x>=0
  ya=Math.sqrt(x)
  xa=(-b+ya)/(2*a)
  yb=Math.sqrt(x)
  xb=(-b-yb)/(2*a)
  puts "The answers are x=#{xb} and x=#{xa}"
else
  puts "This equation can not be solved with the program from now since b^2-4ac is negative."
end

if a>0
  puts "This equation will reach it's summit at x(#{-b/2*a};#{(4*a*c-b*b)/(4*a)})"
elsif a<0
  puts "This equation will reach it's minimum at x(#{-b/2*a};#{(4*a*c-b*b)/(4*a)})"
else
  if b>0
    puts "This equation has no mimimum nor maximum point."
  elsif b<0
  end
end
end


#Linear Equation
if equation==2 then
  puts "Remember a linear equation is under the form y=mx+b"
    puts "Please enter y, if you do not know the value of y type ?"
    y=gets.chomp
    if y=="?"
    Puts "Please enter x, if you do not know this value of both x and y we can not solve the equation:"
    x=gets.chomp
    Puts "Please enter m:"
    a=gets.chomp
    Puts "Please enter b:"
    b=gets.chomp
    puts "The answer to the equation is y= #{m*x+b}"
    else
    Puts "Please enter m:"
    a=gets.chomp
    Puts "Please enter b:"
    b=gets.chomp
    puts "The answer to the equation is x= #{(y-b)/m}"
    end

#Constant Equation
if equation==3
    puts "Remember a constant equation under the form y=c"
    puts "Please enter c, if you do not know c please enter ?:"
    c=gets.chom
    if c=="?"
    puts "Please enter y; if you do not know both y and c you can not resove this equation."
    y=gets.chom
    puts "The answer is y=#{y} for any given c."
    else
    puts "The answer is y=#{c} for any given y."
  end
  else
    puts "Sorry but we can not solve any other equation for now."
  end

puts "Voila... Please leave feedback & suggestions by tweeting to @PabiGamito"