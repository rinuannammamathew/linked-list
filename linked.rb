class Node
  attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
end

def print_values(node)
  if node
    print "#{node.value} --->"
    print_values(node.next_node)
    else
    print "nil\n"
    return 
  end
   
end

class Stack
  attr_accessor :root
  def initilize 
    @root = nil
  end
  def push(value)
    @root=Node.new(value, @root)

  end
  alias_method :"<<", :push
  def pop
    raise "Stack is empty" if is_empty?
    value = @root.value
    @root = @root.next_node
    return value
  end
  def is_empty?
    @root.nil?
  end
end

def reverse_node(node)
    stack = Stack.new

    while node
      stack.push (node.value)
      node = node.next_node
    end

    return stack.root
end


node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)

print_values(node3)
print "\n"



puts "---------"
 

revnode = reverse_node(node3)
print_values(revnode)




