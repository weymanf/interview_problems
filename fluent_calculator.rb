#calculating with functions
#Calc.new.one.plus.two             = Should return 3
#Calc.new.five.minus.six            = Should return -1
#Calc.new.seven.times.two           = Should return 14
#Calc.new.nine.divided_by.three     = Should return 3


class Calc
    
   def initialize
      @sum = nil
      @stack = ""
   end 

   def one
      if @stack == nil
        @sum = 1
        @stack = "1"
        return self
      end

      @stack = @stack + "1"

      if @stack.length == 3
        return eval(@stack)
      end
   end

   def plus
      @stack = @stack "+"
   end
   
end