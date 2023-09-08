class Node
  attr_accessor :left, :right, :value

  def initialize(left = nil, right = nil, value = nil)
    self.left = left
    self.right = right
    self.value = value
  end
end

root = Node.new(nil, nil, 10)
left_child_lv1_1 = Node.new(nil, nil, 5)
right_child_lv1_2 = Node.new(nil, nil, 30)
left_child_lv2_1 = Node.new(nil, nil, 2)
left_child_lv2_3 = Node.new(nil, nil, 25)
right_child_lv2_4 = Node.new(nil, nil, 45)


root.left = left_child_lv1_1
root.right = right_child_lv1_2
left_child_lv1_1.left = left_child_lv2_1
right_child_lv1_2.left = left_child_lv2_3
right_child_lv1_2.right = right_child_lv2_4


# puts root.value
# puts root.left.value
# puts root.right.value
# puts left_child_lv1_1.left.value
# puts right_child_lv1_2.left.value
# puts right_child_lv1_2.right.value


class Binary_tree 

  def self.search(target, node)
    if node == nil
      return false
    elsif target == node.value
      return true
    end

    if target > node.value
      search(target, node.right)
    else
      search(target, node.left)
    end
  end

end

def find_node(target, node)
  if Binary_tree.search(target, node = node) == true
    puts "Có giá trị #{target} trong root"
  else
    puts "Không có giá trị #{target} trong root"  
  end
end

find_node(target = 90, node = root)
find_node(target = 30, node = root)