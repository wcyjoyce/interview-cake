# TODO:
# Write a method to see if a binary tree is "superbalanced" (i.e. where the
# difference between the depths of any two leaf nodes (a tree node with no
# children) is no greater than one).

# TIP:

# This is equivalent to achieving the following:
#   1) The difference between the min leaf depth and max leaf depth is 1 or less.
#   2) There are at most two distinct leaf depths, and they are at most 1 apart.


# ANSWER:

def answer(tree_root)
  return true if !tree_root # a tree with no nodes is superbalanced

  depths = []
  nodes = []
  nodes.push([tree_root, 0])

  while !nodes.empty?
    node, depth = nodes.pop # push node and depth from the top of our stack

    if !node.left && !node.right # case: a leaf is found
      if !depths.include? depth # we only care if it's a new depth
        depths.push(depth)
        # Two ways we might now have an unbalanced tree:
        #   1) more than 2 different leaf depths
        #   2) 2 leaf depths that are more than 1 apart
        return false if (depths.length > 2) || (depths.length == 2 && (depths[0] - depths[1]).abs > 1)
      end
    else # case: this isn't a leaf - keep going down
      nodes.push([node.left, depth + 1]) if node.left
      nodes.push([node.right, depth + 1]) if node.right
    end
  end

  return true
end
