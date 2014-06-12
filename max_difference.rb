#max difference. 
#find the max difference of an array [4,3,10,2,1] --> 10 - 3 == 7
#even though 1 is the lowest the number. Its index is higher than ten so it is not allowed



#slow solution not efficient
def max_difference(ar)
  max_dif = 0
  for i in 0...ar.length 
    for j in i...i 
      ar[i] - ar[j] = max_dif if ar[i] - ar[j] > max_dif
    end
  end
  
  max_dif
end


#solution #2 

def max_difference2(ar)
  min_element = ar[0]
  max_dif = 0

  ar.each do |el|
       max_dif = el - min_element if el - min_element > max_dif
       min_element = el if el < min_element
  end  
  
  max_dif
end