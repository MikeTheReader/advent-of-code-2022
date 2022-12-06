require '2022/day_3'

describe Day3 do
  describe 'part one' do
    describe 'find_duplicates' do
      it 'calculates the correct dupliate for the samples' do
        expect(Day3.find_duplicates('vJrwpWtwJgWrhcsFMMfFFhFp')).to eq('p')
        expect(Day3.find_duplicates('jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL')).to eq('L')
        expect(Day3.find_duplicates('PmmdzqPrVvPwwTWBwg')).to eq('P')
        expect(Day3.find_duplicates('wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn')).to eq('v')
        expect(Day3.find_duplicates('ttgJtRGJQctTZtZT')).to eq('t')
        expect(Day3.find_duplicates('CrZsJsPPZsGzwwsLwLmpwMDw')).to eq('s')
      end
    end
  end
  describe 'part two' do
    describe 'find_duplicates' do
      it 'calculates the correct dupliate for the team samples' do
        expect(
          Day3.find_team_duplicates(
            %w[
              vJrwpWtwJgWrhcsFMMfFFhFp
              jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
              PmmdzqPrVvPwwTWBwg
            ]
          )
        ).to eq('r')
        expect(
          Day3.find_team_duplicates(
            %w[
              wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
              ttgJtRGJQctTZtZT
              CrZsJsPPZsGzwwsLwLmpwMDw
            ]
          )
        ).to eq('Z')
      end
    end
  end
end
