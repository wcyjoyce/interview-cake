# TODO:
# Write a class TempTracker with these methods:
# 1. insert() - records a new temperature
# 2. get_max() - returns the highest temp we've seen so far
# 3. get_min() - returns the lowest temp we've seen so far
# 4. get_mean() - returns the mean of all temps we've seen so far
# 5. get_mode() - returns a mode of all temps we've seen so far

class TempTracker
  def intitialize
    @occurrences = []
    @mode = nil
    @sum = 0
    @readings = 0
    @mean = nil
    @max_temperature = nil
    @min_temperature = nil
  end

  def insert(temperature)
    # Mean
    @sum += temperature
    @readings += 1
    @mean = @sum / @readings

    # Mode
    @occurrences[temperature] += 1
    @mode = temperature if @occurrences[temperature].max && @occurrences[temperature] > 0

    # Min and Max
    @max_temperature = temperature if @max_temperature.nil? || temperature > @max_temperature
    @min_temperature = temperature if @min_temperature.nil? || temperature < @min_temperature
  end

  def get_max
    @max_temperature
  end

  def get_min
    @min_temperature
  end

  def get_mean
    @sum / @readings
  end

  def get_mode
    @mode
  end
end

# ANSWER:

class TempTracker
  def initialize
    # for mode
    @occurrences = [0] * 111 # array of 0s at indices 0..110
    @max_occurrences = 0
    @mode = nil

    # for mean
    @number_of_readings = 0
    @total_sum = 0.0 # mean should be float
    @mean = nil

    # for min and max
    @min_temp = nil
    @max_temp = nil
  end

  def answer_insert(temperature)
    # for mode
    @occurrences[temperature] += 1
    if @occurrences[temperature] > @max_occurrences
      @mode = temperature
      @max_occurrences = @occurrences[temperature]
    end

    # for mean
    @number_of_readings += 1
    @total_sum += temperature
    @mean = @total_sum / @number_of_readings

    # for min and max
    @max_temp = temperature if @max_temp.nil? || temperature > @max_temp
    @min_temp = temperature if @min_temp.nil? || temperature < @min_temp
  end

  def answer_get_max
    @max_temp
  end

  def answer_get_min
    @min_temp
  end

  def answer_get_mean
    @mean
  end

  def answer_get_mode
    @mode
  end
end
