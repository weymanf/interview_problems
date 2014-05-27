#look and say
#i.e 1 --> 11
# 11 ---> 21
# 21 ---> 1211

def look_and_say(str)
  counter = 1
  numbers = str.split(//)
  cluster = []

  numbers.each_with_index do |num, i|
    if num != numbers[i + i]
      cluster << [counter, num]
      counter == 1
    else
      counter += 1
    end
  end

  cluster.flatten.join("")
end