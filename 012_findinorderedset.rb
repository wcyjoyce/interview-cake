# TODO:
# Suppose we had an array of n integers sorted in ascending order. How quickly
# could we check if a given integer is in the array?

def search(number, array)
  array.include?(number) ? true : false
end

search(9, 1..10) # should return true
search(9, 1..5) # should return false

# ANSWER:

## 1) Start with the middle number - is it bigger or smaller than our target number?
## 2) We've effectively "ruled out" the whole half of the array that we know doesn't contain the target number
## 3) Repeat the same approach (of starting in the middle) on the new half-size problem

def answer(target, nums)
  floor_index = -1
  ceiling_index = nums.length

  while floor_index + 1 < ceiling_index
    distance = ceiling_index - floor_index
    half_distance = distance / 2
    guess_index = floor_index + half_distance
    guess_value = nums[guess_index]

    p true if guess_value == target

    if guess_value > target
      ceiling_index = guess_index
    else
      floor_index = guess_index
    end
  end

  p false
end
