require 'RMagick'
include Magick

class Grid
  def initialize(height, width)
    @height = height
    @width = width
    @grid_array = Array.new(height) { Array.new(width) { nil } }
  end

  attr_reader :height, :width

  def get_point(x_loc, y_loc)
    @grid_array[y_loc][x_loc]
  end

  def set_point_value(x_loc, y_loc, value)
    @grid_array[y_loc][x_loc] = value
  end

  def count_matching_points(value_to_match)
    @grid_array.reduce(0) do |sum, x_values|
      sum + x_values.reduce(0) do |x_sum, value|
        x_sum + (value == value_to_match ? 1 : 0)
      end
    end
  end

  def sum_points
    @grid_array.reduce(0) do |sum, x_values|
      sum + x_values.reduce(0) do |x_sum, value|
        x_sum + (value.nil? ? 0 : value.to_i)
      end
    end
  end

  def serialize
    grid_str = ''
    @grid_array.each do |row|
      row.each do |value|
        grid_str += value || '-'
      end
      grid_str += "\n"
    end
    grid_str
  end

  def as_image(file_name)
    image = Image.new(@height, @width)
    @grid_array.each_with_index do |row, y|
      row.each_with_index do |value, x|
        image.pixel_color(x, y, '#000000') unless value.nil?
      end
    end
    image.write(file_name)
  end
end
