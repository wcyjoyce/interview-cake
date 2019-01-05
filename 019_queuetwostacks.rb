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

# ANSWER:

class QueueTwoStacks
  def initialize
    @in_stack  = []
    @out_stack = []
  end

  def enqueue(item)
    @in_stack.push(item)
  end

  def dequeue
    if @out_stack.empty?
      # Move items from in_stack to out_stack, reversing order
      until @in_stack.empty?
        newest = @in_stack.pop
        @out_stack.push(newest)
      end
    end
    @out_stack.empty? ? nil : @out_stack.pop
  end
end
