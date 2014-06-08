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

  #deletes a node with value
  def delete(val)
    node = @start
    if (node.value == val) 
      @start = node.next
      return @start
    end

    while node.next != nil do
      if (node.next.value == val) 
        node.next == node.next.next
        return @start
      end
      node = node.next
    end
  end



end


class link_item
  attr_accessor :value, :next

  def initialize(value, next = nil)
    @value = value
    @nextt = nil
  end


end




def reverse(root_node)
  new_root = nil;
  while root_node do
    next_root = root_node.next
    root_node.next = new_root
    new_root = root
    root_node = next_root
  end

  return new_root

end