#find the sub array inside array with the greatest sum
#ar can include negative numbers

def max_sub_sum(arr)
  max_sum = 0
  l = 0 #first index of best sub array
  r = 0 #last index of best sub array
  current_max = 0
  left = 0

  arr.size.times do |i|
    current_max += arr[i]

    if current_max < 0
      left = i + 1
      current_max = 0
    elsif current_max > max_sum
      max_sum = current_max
      l, r = left, i
    end
  end

  arr[l..r]
end