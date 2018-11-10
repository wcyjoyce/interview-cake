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

