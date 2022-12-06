require '2022/day_6'

describe Day6 do
  describe 'part one' do
    describe 'start_of_packet' do
      it 'works with the test data' do
        expect(Day6.start_of_packet('bvwbjplbgvbhsrlpgdmjqwftvncz')).to eq(5)
        expect(Day6.start_of_packet('nppdvjthqldpwncqszvftbrmjlhg')).to eq(6)
        expect(Day6.start_of_packet('nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg')).to eq(10)
        expect(Day6.start_of_packet('zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw')).to eq(11)
      end
    end
    describe 'start_of_message' do
      it 'works with the test data' do
        expect(Day6.start_of_message('bvwbjplbgvbhsrlpgdmjqwftvncz')).to eq(23)
        expect(Day6.start_of_message('nppdvjthqldpwncqszvftbrmjlhg')).to eq(23)
        expect(Day6.start_of_message('nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg')).to eq(29)
        expect(Day6.start_of_message('zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw')).to eq(26)
      end
    end
  end
end
