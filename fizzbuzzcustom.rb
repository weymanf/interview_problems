=begin

Description:

Create a method/function that returns an array of numbers from 1 to 100.

If no arguments are passed the value at the index of the array for number should be 'Fizz' if it is divisible by 3, 'Buzz' if divisible by 5, 'FizzBuzz' if it divisible by both 3 and 5, or the number if it is not divisible by 3 or 5.

The method should take up to 4 arguments:

The first and second arguments are strings, which should be 'Fizz' and 'Buzz' by default.

The third and fourth arguments are integers and and should be 3 and 5 by default.

Example

fizz_buzz_custom[15]                         # returns 16
fizz_buzz_custom[44]                         # returns "FizzBuzz" (45 is divisible by 3 and 5)
fizz_buzz_custom('Hey', 'There')[25]         # returns 26
fizz_buzz_custom('Hey', 'There')[11]         # returns "Hey" (12 is divisible by 3)
fizz_buzz_custom("What's ", "up?", 3, 7)[80] # returns "What's " (81 is divisible by 3)

=end


def fizz_buzz_custom(string_1 = "Fizz", string_2 = "Buzz", num_1 = 3, num_2 = 5)
  (1..100).to_a.map do |n| 
    str = ""
    str << string_1 if n % num_1 == 0
    str << string_2 if n % num_2 == 0
    str == "" ? n : str
  end

end



#not mines but a shorter version of my solution
def fizz_buzz_custom(s1 = :Fizz, s2 = :Buzz, n1 = 3, n2 = 5)
  (1..100).to_a.map{|i|
    a = "#{s1 if i % n1 == 0}#{s2 if i % n2 == 0}"
    a.empty? ? i : a
  }
end


#someones one liner
def fizz_buzz_custom(string_1="Fizz", string_2="Buzz", num_1=3, num_2=5)
  (1..100).collect { |i| (fb = [[string_1][i % num_1], [string_2][i % num_2]].compact.join).empty? ? i : fb }
end