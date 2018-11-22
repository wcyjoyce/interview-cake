# Binary Search Tree Checker
###### [Date]

**Write a method to check that a binary tree ↴ is a valid binary search tree.**

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
    @left
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
    @right
  end
end
```

---

Notes:
![Binary Tree](https://www.interviewcake.com/images/svgs/bst_checker__parent_check_insufficient.svg?bust=188)

Consider the example above – notice that when you check the blue node against its parent, it seems correct. However, it's greater than the root, so it should be in the root's right subtree. So we see that checking a node against its parent isn't sufficient to prove that it's in the correct spot.
