class Day4
  def self.part_one(input_file)
    File.readlines(input_file).reduce(0) do |sum, section_pair|
      if overlaps?(section_pair)
        sum + 1
      else
        sum
      end
    end
  end

  def self.part_two(input_file)
    File.readlines(input_file).reduce(0) do |sum, section_pair|
      if overlaps_a_bit?(section_pair)
        sum + 1
      else
        sum
      end
    end
  end

  def self.overlaps?(section_str)
    section_ranges = extract_ranges(section_str)
    overlap = section_ranges[0] & section_ranges[1]
    overlap == section_ranges[0] || overlap == section_ranges[1]
  end

  def self.overlaps_a_bit?(section_str)
    section_ranges = extract_ranges(section_str)
    overlap = section_ranges[0] & section_ranges[1]
    overlap.length.positive?
  end

  def self.extract_ranges(section_str)
    section_str.split(',').map do |section|
      extract_range(section)
    end
  end

  def self.extract_range(range)
    numbers = range.split('-').map(&:to_i)
    (numbers[0]..numbers[1]).to_a
  end
end
