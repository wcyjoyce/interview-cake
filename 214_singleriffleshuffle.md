# In-Place Riffle Shuffle
###### October 23 2018

**Write a method for doing an in-place shuffle of an array.**

The shuffle must be "uniform," meaning each item in the original array must have the same probability of ending up in each spot in the final array.

Assume that you have a method `get_random(floor, ceiling)` for getting a random integer that is `>= floor` and `<= ceiling`.

---

An *in-place* algorithm operates directly on its input and changes it, instead of creating and returning a new object. This is sometimes called *destructive*, since the original input is "destroyed" when it's edited to create the new output.

*Careful: "In-place" does not mean "without creating any additional variables!"* Rather, it means "without creating a new copy of the input." In general, an in-place method will only create additional variables that are O(1)O(1) space.

---

Here are two methods that do the same operation, except one is in-place and the other is out-of-place:
```
def square_array_in_place(int_array)

  int_array.each_with_index do |element, index|
    int_array[index] *= element
  end

  # NOTE: we could make this method return nil,
  # since we modify int_array in place.
  return int_array
end

def square_array_out_of_place(int_array)

  # we allocate a new array with the length of the input array
  squared_array = [nil] * int_array.length

  int_array.each_with_index do |element, index|
    squared_array[index] = element ** 2
  end

  return squared_array
end
```

*Working in-place is a good way to save space.* An in-place algorithm will generally have O(1)O(1) space cost.

*But be careful: an in-place algorithm can cause side effects.* Your input is "destroyed" or "altered," which can affect code outside of your method. For example:

```
original_array = [2, 3, 4, 5]
squared_array  = square_array_in_place(original_array)

puts "squared: #{squared_array}"
# prints: squared: [4, 9, 16, 25]

puts "original array: #{original_array}"
# prints: original array: [4, 9, 16, 25], confusingly!

# and if square_array_in_place() didn't return anything,
# which it could reasonably do, squared_array would be nil!
```

Generally, out-of-place algorithms are considered safer because they avoid side effects. You should only use an in-place algorithm if you're very space constrained or you're positive you don't need the original input anymore, even for debugging.
