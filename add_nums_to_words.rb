#takes string and adds numbers after the words
# i.e "this is it"
# "this3 is2 it1"

def add_nums_to_words(str)
  counter = 1
  
  if str.reverse[0] !=  " " 
    str << "#{counter}"
    counter += 1
  end

  reversed_str = str.reverse

  reversed_str.split(//).map.with_index do | character, i |
    if character == " " && reversed_str[i+1] != " "
      counter += 1
      "#{counter - 1}" + character
    else
      character
    end
  end.reverse.join("")

end  # really gimmicky will improve later