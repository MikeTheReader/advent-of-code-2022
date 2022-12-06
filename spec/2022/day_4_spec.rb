require '2022/day_4'

describe Day4 do
  describe 'part one' do
    describe 'overlaps?' do
      it 'works with the test data' do
        expect(Day4.overlaps?('2-4,6-8')).to eq(false)
        expect(Day4.overlaps?('2-3,4-5')).to eq(false)
        expect(Day4.overlaps?('5-7,7-9')).to eq(false)
        expect(Day4.overlaps?('2-8,3-7')).to eq(true)
        expect(Day4.overlaps?('6-6,4-6')).to eq(true)
        expect(Day4.overlaps?('2-6,4-8')).to eq(false)
      end
    end
  end
end
