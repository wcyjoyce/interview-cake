# TODO:
# Write a method merge_ranges() that takes an array of multiple meeting time
# ranges and returns an array of condensed ranges.

def merge_ranges(array)
  array.sort!
  range = []
  range << array.first
  for i in (0..array.length - 1)
    if array[i - 1].last < array[i].first
      merged_times = [(array[i] + array[i + 1]).first, (array[i] + array[i + 1]).last]
      range << merged_times
    end
  end
  p range
end

array = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]
merge_ranges(array)
