# TODO:
# Write a method for doing an in-place shuffle of an array. Assume that you have
# a method get_random(floor, ceiling) for getting a random integer that is ≥ floor
# and ≤ ceiling.

def get_random(floor, ceiling)
  random = rand(floor..ceiling)
end

# ANSWER:

def answer_get_random(floor, ceiling)
  rand(floor..ceiling)
end

def answer_shuffle(array)
  return array unless array.length > 1 # if it's 1 or 0 items, just return
  last_index = array.length - 1
  (0..array.length - 2).each do |chosen_index|
    # choose a random not-yet-placed item to place there (could also be the item
    # currently in that spot) which must be an item AFTER the current item,
    # because the stuff before has all already been placed
    random_index = answer_get_random(chosen_index, last_index)

    # place our random choice in the spot by swapping
    if random_index != chosen_index
      array[chosen_index], array[random_index] = array[random_index], array[chosen_index]
    end
  end
end

answer_get_random(1,100)
