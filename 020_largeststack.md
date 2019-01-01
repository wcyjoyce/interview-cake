# Largest Stack
#### [Date]

You want to be able to access the largest element in a stack.

You've already implemented this Stack class:
```
  class Stack

  # initialize an empty array
  def initialize
    @items = []
  end

  # push a new item to the last index
  def push(item)
    @items.push(item)
  end

  # remove the last item
  def pop
    # if the stack is empty, return nil
    # (it would also be reasonable to throw an exception)
    if @items.empty?
      nil
    else
      @items.pop
    end
  end

  # see what the last item is
  def peek
    if @items.empty?
      nil
    else
      @items[-1]
    end
  end
end
```

**Use your Stack class to implement a new class MaxStack with a method get_max() that returns the largest element in the stack.** `get_max()` should not remove the item.

---

Notes:
- Your stacks should contain only integers.
- What if we push several items in increasing numeric order (like 1, 2, 3, 4...), so that there is a new max after each `push()`? What if we then `pop()` each of these items off, so that there is a new max after each `pop()`? Your algorithm shouldn't pay a steep cost in these edge cases.
