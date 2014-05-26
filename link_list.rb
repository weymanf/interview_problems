#build a linklists

class linklist

  attr_accessor :start

  def initialize(link_item)
    @start = link_item
  end


  def add(node)
    current_link_item = @start
    while current_node
      current_link_item = current_link_item.next


    end
    current_link_item.next = node
  end

  def find
    
  end

  def delete(nth_link_item)

  end

end


class link_item
  attr_accessor :value, :next

  def initialize(value, next = nil)
    @value = value
    @nextt = nil
  end


end