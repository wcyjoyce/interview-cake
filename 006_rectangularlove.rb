# TODO:
# Write a method to find the rectangular intersection of two given love rectangles.

def overlap(coordinate_1, range_1, coordinate_2, range_2)
  start_point = [coordinate_1, coordinate_2].max
  end_point = [(coordinate_1 + range_1), (coordinate_2 + range_2)].min
  if start_point < end_point
    overlap_range = end_point - start_point
    [start_point, overlap_range]
  else
    return [nil, nil]
  end
end

def intersect(rectangle_1, rectangle_2)
  x_coordinate, x_overlap = overlap(rectangle_1[:left_x], rectangle_1[:width], rectangle_2[:left_x], rectangle_2[:width])
  y_coordinate, y_overlap = overlap(rectangle_1[:bottom_y], rectangle_1[:height], rectangle_2[:bottom_y], rectangle_2[:height])
  if x_overlap = nil || y_overlap == nil
    overlap = {
      left_x: nil,
      bottom_y: nil,
      width: nil,
      height: nil
    }
  else
    overlap = {
    left_x: x_coordinate,
    bottom_y: y_coordinate,
    width: x_overlap,
    height: y_overlap
    }
  end
  p overlap
end

# ANSWER:

def find_range_overlap(point1, length1, point2, length2)
  highest_start_point = [point1, point2].max
  lowest_end_point = [point1 + length1, point2 + length2].min
  return [nil, nil] if highest_start_point >= lowest_end_point
  # compute the overlap length
  overlap_length = lowest_end_point - highest_start_point
  [highest_start_point, overlap_length]
end

def answer(rect1, rect2)
  # get the x and y overlap points and lengths
  x_overlap_point, overlap_width  = find_range_overlap(rect1[:left_x], rect1[:width], rect2[:left_x], rect2[:width])
  y_overlap_point, overlap_height = find_range_overlap(rect1[:bottom_y], rect1[:height], rect2[:bottom_y], rect2[:height])

  # return nil rectangle if there is no overlap
  if !overlap_width || !overlap_height
    answer = {
      left_x: nil,
      bottom_y: nil,
      width: nil,
      height: nil
    }
  else
    answer = {
      left_x: x_overlap_point,
      bottom_y: y_overlap_point,
      width: overlap_width,
      height: overlap_height
    }
  end
  p answer
end
