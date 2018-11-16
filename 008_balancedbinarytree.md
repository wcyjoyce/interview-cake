**Write a method to see if a binary tree is "_superbalanced_" – a tree is "superbalanced" if the difference between the depths of any two leaf nodes (a tree node with no children) is no greater than one.**

Here's a sample binary tree node class:
```
  class BinaryTreeNode

  attr_accessor :value
  attr_reader :left, :right

  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
    return @left
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
    return @right
  end
end
```

---

A binary tree is a tree where every node has two or fewer children. The children are usually called @left and @right.

```
class BinaryTreeNode

  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end
end
```

This lets us build a structure like this:
![Binary Tree](https://www.interviewcake.com/images/svgs/binary_tree__depth_5.svg?bust=188)

That particular example is special because every level of the tree is completely full. There are no "gaps". We call this kind of tree "perfect".

Binary trees have a few interesting properties when they're perfect:

1. **Property 1: the number of total nodes on each "level" doubles as we move down the tree.**

![Property  1](https://www.interviewcake.com/images/svgs/binary_tree__depth_5_with_number_of_nodes_labelled.svg?bust=188)

2. **Property 2: the number of nodes on the last level is equal to the sum of the number of nodes on all other levels (plus 1).** In other words, about half of our nodes are on the last level.
