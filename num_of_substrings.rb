=begin

You are given a string S. You need to compute the number of distinct substrings of S.                  
A substring of S can be obtained by either removing one or more characters from the left side of S, or by removing one or more characters from the right side of S, or a combination of both.
Input Format:
There is only one line of the input and it contains the string S
S will only be composed of characters 'a' to 'z' and will not have more than 10^5 characters.
Output Format:
You should print the number of distinct substrings of S to the output. This number might be larger than what can be permitted by 32-bit integers.
Sample input:
kincenvizh
Sample output:
53
=end

# Enter your code here. Read input from STDIN. Print output to STDOUT


#naive solution. build the substrings and count them
def num_of_substrings1(str)
  str_arr = str.split(//)
  len = (1..str_arr.length).to_a.flat_map do |n|
          str_arr.each_cons(n).to_a
        end.uniq.length
end




def num_of_substrings2(str)
length_of_ar = str.length
length_of_uniq = str.uniq.length

  #number of substrings is added 
  #minus the duplicated letters
len = (1..S).inject(:+) - (length_of_ar - length_of_uniq)
end




