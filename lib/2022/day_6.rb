class Day6
  def self.part_one(input_file)
    start_of_packet(File.read(input_file))
  end

  def self.part_two(input_file)
    start_of_message(File.read(input_file))
  end

  def self.start_of_packet(comm_str)
    find_first_window(comm_str, 4)
  end

  def self.start_of_message(comm_str)
    find_first_window(comm_str, 14)
  end

  def self.find_first_window(comm_str, window_size)
    start_index = 0
    while start_index + window_size < comm_str.length
      packet = comm_str[start_index...start_index + window_size]
      break if packet.chars.uniq.length == window_size

      start_index += 1
    end
    start_index + window_size
  end
end
