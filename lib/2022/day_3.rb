class Day3
  @letters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.chars

  def self.part_one(input_file)
    File.readlines(input_file).reduce(0) do |sum, rucksack|
      sum + get_point(find_duplicates(rucksack))
    end
  end

  def self.part_two(input_file)
    total = 0
    current_group = []
    File.readlines(input_file).each do |rucksack|
      current_group.append(rucksack)
      if current_group.length == 3
        total += get_point(find_team_duplicates(current_group))
        current_group = []
      end
    end
    total
  end

  def self.find_duplicates(rucksack)
    left, right = rucksack.strip.chars.each_slice(rucksack.length / 2).map(&:join)
    (left.chars & right.chars).first
  end

  def self.find_team_duplicates(rucksack_array)
    matching = rucksack_array.reduce(@letters) do |current_union, rucksack|
      rucksack.chars & current_union
    end
    matching.first
  end

  def self.get_point(letter)
    @letters.find_index(letter) + 1
  end
end
