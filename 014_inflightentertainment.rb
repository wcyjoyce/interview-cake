# TODO:
# Write a method that takes an integer flight_length (in minutes) and an array
# of integers movie_lengths (in minutes) and returns a boolean indicating
# whether there are two numbers in movie_lengths whose sum equals flight_length.

def movie(movie_lengths, flight_length)
  movies = []
  movie_lengths.each do |first_movie_length|
    second_movie_length = flight_length - first_movie_length
    if movies.include?(second_movie_length)
      p true
      break
    else
      movies << first_movie_length
      p false
    end
  end
end

movie_lengths = [25, 50, 50, 20, 30]
flight_long = 100
flight_medium = 70
flight_short = 20

movie(movie_lengths, flight_long) # should return "false / false / true"
movie(movie_lengths, flight_medium) # should return "false / false / false / true"
movie(movie_lengths, flight_short) # should return "false / false / false / false / false"

# ANSWER:

require "set"

def answer(movie_lengths, flight_length)
  movie_lengths_seen = Set.new # movie lengths we've seen so far
  movie_lengths.any? do |first_movie_length|
    matching_second_movie_length = flight_length - first_movie_length
    if movie_lengths_seen.include?(matching_second_movie_length)
      p true
    else
      movie_lengths_seen.add(first_movie_length)
      p false
    end
  end
end

answer(movie_lengths, flight_long) # should return "false / false / true"
answer(movie_lengths, flight_medium) # should return "false / false / false / true"
answer(movie_lengths, flight_short) # should return "false / false / false / false / false"
