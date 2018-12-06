# TODO:
# Write an efficient method that tells us whether or not an input string's
# openers and closers are properly nested.

def validate(code)
  brackets = { "(" => ")", "{" => "}", "[" => "]" }
  # code = code.gsub(/\w/ && /\s+/, "")
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

p validate("{ [ ] ( ) }") # true
p validate("{ [ ( ] ) }") # false
p validate("{ [ }") # false

