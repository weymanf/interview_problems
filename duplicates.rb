#find duplicates in an array

def duplicates(arr)
  values_in_arr = Hash.new
  copies = []
  arr.each do | el |
    if values_in_arr[el]
      copies << el
    else
      values_in_arr[el] = true
    end
  end

    copies

end