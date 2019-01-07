# TODO:
# Write a method that takes (1) an array of unsorted_scores and (2) the
# highest_possible_score in the game and returns a sorted array of scores
# efficiently.

def sort_scores(unsorted_scores, highest_possible_score)
  array = []
  array << highest_possible_score
  unsorted_scores.sort.reverse.each { |score| array << score }
end

unsorted_scores = [37, 89, 41, 65, 91, 53]
highest_possible_score = 100

p sort_scores(unsorted_scores, highest_possible_score)
# returns [91, 89, 65, 53, 41, 37]

# ANSWER:

# 1) Allocate an array num_counts where the indices represent numbers from our input
#    array and the values represent how many times the index number appears.
# 2) In one pass of the input array, update num_counts as you go.
# 3) Allocate an array sorted_array where we'll store our sorted numbers.
# 4) In one in-order pass of num_counts put each number, the correct number of times,
#    into sorted array.

def answer(unsorted_scores, highest_possible_score)
  score_counts = [0] * (highest_possible_score + 1) # array of 0's at indices 0..highest_possible_score
  unsorted_scores.each { |score| score_counts[score] += 1 } # populate score_counts
  sorted_scores = [] # populate the final sorted_scores
  highest_possible_score.downto(0) do |score|
    count = score_counts[score]
    (0...count).each { |time| sorted_scores << score }
  end
  return sorted_scores
end

unsorted_scores = [37, 89, 41, 65, 91, 53]
highest_possible_score = 100

p answer(unsorted_scores, highest_possible_score)
# returns [91, 89, 65, 53, 41, 37]
