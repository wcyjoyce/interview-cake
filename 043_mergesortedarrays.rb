# TODO:
# Write a method to merge our arrays of orders into one sorted array.

def merge(array_one, array_two)
  p (array_one + array_two).sort
end

array_one = [3, 4, 6, 10, 11, 15]
array_two = [1, 5, 8, 12, 14, 19]

merge(array_one, array_two) # should return [1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19]

# ANSWER:

def merge_arrays(my_array, alices_array)
  merged_array_size = my_array.length + alices_array.length
  merged_array = [nil] * merged_array_size

  current_index_alices = 0
  current_index_mine = 0
  current_index_merged = 0

  while current_index_merged < merged_array_size
    is_my_array_exhausted = current_index_mine >= my_array.length
    is_alices_array_exhausted = current_index_alices >= alices_array.length

    if !is_my_array_exhausted and (is_alices_array_exhausted || \
        (my_array[current_index_mine] < alices_array[current_index_alices]))

      merged_array[current_index_merged] = my_array[current_index_mine]
      current_index_mine += 1
    else
      merged_array[current_index_merged] = alices_array[current_index_alices]
      current_index_alices += 1
    end
    current_index_merged += 1
  end

  return merged_array
end
