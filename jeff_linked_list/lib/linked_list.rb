require 'pry'

class LinkedList
  attr_accessor :head_node

  def initialize
    @head_node = nil
  end

  def count
    return 0 if head_node == nil
    1
  end

  def push(data)
    new_node = Node.new(data)
    if head_node
      #sometihg
    else
      self.head_node = new_node
    end
  end
end



class Node
  def initialize(data, pointer = nil)
    @data = data
    @pointer = pointer
  end
end
