# #Works expect when you will put 00..0
# def is_num(string)
  # if string.to_f==0.0 and string!="0" then
    # return false
  # else 
    # return true
  # end
# end

def is_num?(string)
  true if Float(string) rescue false
end

number=gets.chomp
puts is_num?(number)