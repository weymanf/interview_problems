#return the index of the number
#that has dupliates >= half the elements in the array

def dominator(arr)
  arr.each_with_index do | el, i |
    if arr.count(el) >= arr.length / 2
      return i
  end

  -1
end