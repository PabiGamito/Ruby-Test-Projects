# Write a speak_to_grandma method that accepts one argument: what you want to say to her. Whatever you say to grandma (whatever
# you type in), she should respond with HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you shout, 
# she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938!.
 
# Need help figuring out how to use if/else statements? Check out the resources below.
# BONUS
# # # Too easy? To make your program really believable, have grandma shout a different year each time you run the program; 
# # maybe any year at random between 1930 and 1950. (Hint: There is a Ruby method that will generate random numbers.)
# # # DOUBLE BONUS
# # # Grandma decided she wants to keep talking to you and won't let you leave. Change your program so that it keeps running 
# # until you shout BYE. (Hint: You will probably want to use a while loop to keep the program running.)
# # # TRIPLE BONUS
# # # Grandma really doesn't want you to leave! When you shout BYE, she pretends not to hear you. Change your program so that 
# # you have to shout BYE three times in a row before the program will end. Make sure to test your program: if you shout BYE 
# three times, but not in a row, you should still be talking to grandma.

def is_upercase?(char)
  if char==char.upcase then
    return "true"
  else
    return "false"
  end
end

puts "Do you want to start the grandmother simulator?"
start=gets.chomp
while start!="YES" #MAKE IS SO IT STARTS EVEN IF YOU PUT YES!!!...
  grandma_first_answers=["Yes? I can't hear you SPEAK UP!", "Was that a yes?", "So? Yes or no? I can't HEAR YOU!", "Stop whispering!"]
  item = grandma_first_answers.shuffle[0]
  puts "#{item}"
  start=gets.chomp
end
  puts "Ok, so what did you do today?"
  answer_that_doesnt_matter=gets.chomp
  while is_upercase?(answer_that_doesnt_matter)=="false"
  puts "HUH?! SPEAK UP, SONNY!"
  answer_that_doesnt_matter=gets.chomp
  end
  puts "Last time I did that was in #{rand(1930..1999)}"
  
  
