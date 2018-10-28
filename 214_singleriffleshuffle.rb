# TODO:
# Write a method for doing an in-place shuffle of an array. Assume that you have
# a method get_random(floor, ceiling) for getting a random integer that is ≥ floor
# and ≤ ceiling.

def get_random(floor, ceiling)
  random = rand(floor..ceiling)
end

# get_random(1,100)

# APPROACH:
# Choose a first random item to move to the first index
# Choose a second random item to move to the second index

# ANSWER:

def answer_get_random(floor, ceiling)
  rand(floor..ceiling)
end

def answer_shuffle(array)
  return array unless array.length > 1 # if it's 1 or 0 items, just return
  last_index_in_array = array.length - 1
  (0..array.length - 2).each do |index_we_are_choosing_for|
    # choose a random not-yet-placed item to place there (could also be the item
    # currently in that spot) which must be an item AFTER the current item,
    # because the stuff before has all already been placed
    random_choice_index = answer_get_random(index_we_are_choosing_for, last_index_in_array)

    # place our random choice in the spot by swapping
    if random_choice_index != index_we_are_choosing_for
      array[index_we_are_choosing_for], array[random_choice_index] =
        array[random_choice_index], array[index_we_are_choosing_for]
    end
  end
end

answer_get_random(1..100)
