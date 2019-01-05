# TODO:
# Implement a queue with 2 stacks. Your queue should have an enqueue and a
# dequeue method and it should be "first in first out" (FIFO).

def enqueue(items)
  @in_stack = []
  items.each { |item| @in_stack << item }
end

def dequeue(items)
  out_stack = []
  unless @in_stack.empty?
    @in_stack.reverse.each { |item| out_stack << item }
  end
end

items = ["a", "b", "c", "d"]
enqueue(items)
dequeue(items)
