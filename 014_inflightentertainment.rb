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

movie(movie_lengths, flight_long)
movie(movie_lengths, flight_medium)
movie(movie_lengths, flight_short)


