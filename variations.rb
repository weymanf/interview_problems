#suppose we have a Nth number of values
# [a,b], [c,d,e], [f]
#It should return a value of [acf, adf, aef, bcf, bdf, bef]

def variations(values)
  first = values.first

  if values.length == 1  #base case
    return first
  else
    rest_of_values = variations(values[1..-1])
    
    first.map do | first_el |
     rest_of_values.map do | rest_el | 
      "#{first_el}#{rest_el}" 
      end
    end.flatten 

  end
end