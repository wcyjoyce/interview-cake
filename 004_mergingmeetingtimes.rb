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
merge_ranges(array) # should return [[0, 1], [3, 8], [9, 12]]

# ANSWER:

def answer(meetings)
  sorted_meetings = meetings.sort # sort by start time
  merged_meetings = [sorted_meetings[0]] # initialise merged meetings with the earliest meeting

  sorted_meetings[1..-1].each do |current_start, current_end|
    last_meeting_start, last_meeting_end = merged_meetings[-1]
    # if the current meeting overlaps with the last merged meeting, use the later end time of the two
    if current_start <= last_meeting_end
      merged_meetings[-1] = [ last_meeting_start, [last_meeting_end, current_end].max ]
    else
      merged_meetings << [current_start, current_end]
    end
  end
  p merged_meetings
end

meetings = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]
answer(meetings)
