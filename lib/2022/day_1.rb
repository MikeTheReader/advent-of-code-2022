class Day1
  def self.part_one(input_file)
    calories_per_elf = find_calorie_counts(input_file)
    calories_per_elf.max
  end

  def self.part_two(input_file)
    calories_per_elf = find_calorie_counts(input_file)
    calories_per_elf.max(3).sum
  end

  def self.find_calorie_counts(input_file)
    calories_per_elf = [0]
    File.readlines(input_file).each do |calorie|
      if calorie.strip.empty?
        calories_per_elf.append(0)
      else
        calories_per_elf[-1] += calorie.to_i
      end
    end
    calories_per_elf
  end
end
