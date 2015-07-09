#Picks a random string from the array:
def random_string(item_1, item_2, item_3)
  all_items=["#{item_1}", "#{item_2}", "#{item_3}"]
  random_item = all_items.shuffle[0]
  puts "#{item}"
end

#Check if the string is a number (returns true if it is a # or else returns flase):
def is_number?(string)
  true if Float(string) rescue false
end

#Check to see if all characters are upercase or lower case
char="a string of stuff"
def is_upercase?()
  if char==char.upcase then
    return "true"
  else
    return "false"
  end
end
