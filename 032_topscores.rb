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

