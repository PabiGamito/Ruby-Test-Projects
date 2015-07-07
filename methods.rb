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

