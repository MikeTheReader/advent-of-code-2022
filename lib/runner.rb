require 'getoptlong'

opts = GetoptLong.new(
  ['--year', '-y', GetoptLong::OPTIONAL_ARGUMENT],
  ['--day', '-d', GetoptLong::REQUIRED_ARGUMENT]
)

year = 2022
day = nil
opts.each do |opt, arg|
  case opt
  when '--year'
    year = arg
  when '--day'
    day = arg
  end
end

if day.nil?
  puts 'Usage: runner --day 3 [--year 2022]'
  exit 0
end

puts "Running day #{day}, year #{year}."

test_input_file = File.join(File.dirname(__FILE__), "./#{year}/input/day-#{day}.txt")
require_relative "#{year}/day_#{day}"
day_class = Object.const_get("Day#{day}")

puts "Part one result: #{day_class.part_one(test_input_file)}" if defined?(day_class.part_one)
puts "Part one result: #{day_class.part_two(test_input_file)}" if defined?(day_class.part_two)
