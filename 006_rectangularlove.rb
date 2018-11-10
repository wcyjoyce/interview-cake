# TODO:
# Write a method to find the rectangular intersection of two given love rectangles.

def x_overlap(x1, width_1, x2, width_2)
  width_endpoint_1 = x1 + width_1
  x_overlap = width_endpoint_1 - x2 if width_endpoint_1 >= x2
  p x_overlap
end

def y_overlap(y1, height_1, y2, height_2)
  height_endpoint_1 = y1 + height_1
  y_overlap = height_endpoint_1 - y2 if height_endpoint_1 >= y2
  p y_overlap
end

def intersect(rectangle_1, rectangle_2)
  width_endpoint_1 = rectangle_1[:left_x] + rectangle_1[:width]
  x_overlap = width_endpoint_1 - rectangle_2[:left_x] if width_endpoint_1 >= rectangle_2[:left_x]
  height_endpoint_1 = rectangle_1[:bottom_y] + rectangle_1[:height]
  y_overlap = height_endpoint_1 - rectangle_2[:bottom_y] if height_endpoint_1 >= rectangle_2[:bottom_y]
  x_coordinate = width_endpoint_1 - x_overlap
  y_coordinate = height_endpoint_1 - y_overlap

  overlap = {
    left_x: x_coordinate, # 5
    bottom_y: y_coordinate, # 2
    width: x_overlap, # 2
    height: y_overlap, # 2
  }
  p overlap
end

rectangle_1 = {
  left_x: 1,
  bottom_y: 1,
  width: 2,
  height: 2,
}

# overlap should return 2, 2, 1, 1
rectangle_2 = {
  left_x: 2,
  bottom_y: 2,
  width: 2,
  height: 2,
}

# no overlap - should return nil
rectangle_3 = {
  left_x: 4,
  bottom_y: 1,
  width: 1,
  height: 1,
}

# touches - should return nil
rectangle_4 = {
  left_x: 3,
  bottom_y: 1,
  width: 2,
  height: 2,
}

# inside - should return 2, 1, 1, 1
rectangle_5 = {
  left_x: 2,
  bottom_y: 1,
  width: 1,
  height: 1,
}

intersect(rectangle_1, rectangle_2)
intersect(rectangle_1, rectangle_3)
