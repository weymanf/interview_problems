#create a stack class
#with a custom method to find max value of stack

class Stack
  def initialize
    @store = []
    @max_values = []
  end

  def push(val)
    @store << val
    @max_values << val if @max_values.empty? || val >= @max_values.last
  end


  def pop
    popped = @store.pop
    if popped == @max_values.last
      @max_values.pop
    end

  end


  def max
    @max_values.last
  end
end