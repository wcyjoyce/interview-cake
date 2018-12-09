# TODO:
# Write an efficient method that tells us whether or not an input string's
# openers and closers are properly nested.

def validate(code)
  brackets = { "(" => ")", "{" => "}", "[" => "]" }
  check = []
  code.chars.each do |char|
    if brackets.keys.include?(char)
      check << char
    elsif brackets.values.include?(char)
      check.delete_at(-1) if brackets.values_at(check[-1]).include?(char)
    else
      false
    end
  end
  check.empty? ? true : false
end

p validate("{ [ ] ( ) }") # should return true
p validate("{ [ ( ] ) }") # should return false
p validate("{ [ }") # should return false

# ANSWER:

## 1) If we see an opener, we push it onto the stack
## 2) If we see a closer, we check to see if it is the closer for the opener at the top of the stack
## 3) If it is, we pop from the stack; otherwise, or if the stack is empty, we return false

require "set"

def answer(code)
  openers_to_closers = { "(" => ")", "{" => "}", "[" => "]" }

  openers = openers_to_closers.keys.to_set
  closers = openers_to_closers.values.to_set

  openers_stack = []
  code.chars.each do |char|
    if openers.include?(char)
      openers_stack.push(char)
    elsif closers.include?(char)
      if openers_stack.empty?
        return false
      else
        last_unclosed_opener = openers_stack.pop
        return false if openers_to_closers[last_unclosed_opener] != char
      end
    end
  end
  return openers_stack.empty?
end

p answer("{ [ ] ( ) }")
p answer("{ [ ( ] ) }")
p answer("{ [ }")
