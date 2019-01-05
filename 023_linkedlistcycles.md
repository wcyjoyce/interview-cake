# Linked List Cycles
#### [Date]

You have a singly-linked list and want to check if it contains a cycle.

A singly-linked list is built with nodes, where each node has:
* `node.next` — the next node in the list
* `node.value` - the data held in the node (e.g. if our linked list stores people in line at the movies, node.value might be the person's name)

For example:
```
class LinkedListNode
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next  = nil
  end
end
```

A cycle occurs when a node’s `@next` points back to a previous node in the list. The linked list is no longer linear with a beginning and end — instead, it cycles through a loop of nodes.

**Write a method contains_cycle() that takes the first node in a singly-linked list and returns a boolean indicating whether the list contains a cycle.**

---

Notes:
A cycle can occur in the middle of a list, or it can simply mean the last node links back to the first node. Does your method work for both?
