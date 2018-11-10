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
    @sum += temperature
    @readings += 1
    @mean = @sum / @readings
    @occurrences[temperature] += 1
    @mode = temperature if @occurrences[temperature].max
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
