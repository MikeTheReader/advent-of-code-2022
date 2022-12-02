require '2022/day_2'

describe Day2 do
  describe 'part one' do
    describe 'calculate_score' do
      it 'calculates the correct score for the samples' do
        expect(Day2.calculate_score('A Y')).to eq(8)
        expect(Day2.calculate_score('B X')).to eq(1)
        expect(Day2.calculate_score('C Z')).to eq(6)
      end
    end
  end
  describe 'part two' do
    describe 'calculate_score_two' do
      it 'calculates the correct score for the samples' do
        expect(Day2.calculate_score_two('A Y')).to eq(4)
        expect(Day2.calculate_score_two('B X')).to eq(1)
        expect(Day2.calculate_score_two('C Z')).to eq(7)
      end
    end
  end
end
