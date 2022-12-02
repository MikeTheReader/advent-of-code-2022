require '2022/grid'

describe 'grid' do
  it 'contructs a new grid' do
    grid = Grid.new(1000, 500)
    expect(grid.height).to eq(1000)
    expect(grid.width).to eq(500)
  end

  it 'can set a point value and get it back' do
    grid = Grid.new(10, 10)
    grid.set_point_value(5, 5, 'test')
    expect(grid.get_point(5, 5)).to eq('test')
  end

  it 'can count all points of a given value' do
    grid = Grid.new(10, 10)
    grid.set_point_value(5, 5, '1')
    grid.set_point_value(3, 3, '1')
    grid.set_point_value(2, 2, '2')
    expect(grid.count_matching_points('1')).to eq(2)
    expect(grid.count_matching_points('2')).to eq(1)
  end

  it 'can serialize itself' do
    grid = Grid.new(10, 10)
    grid.set_point_value(5, 5, '0')
    grid.set_point_value(3, 3, '0')
    grid.set_point_value(2, 2, '0')
    serialized_grid = <<~GRID
      ----------
      ----------
      --0-------
      ---0------
      ----------
      -----0----
      ----------
      ----------
      ----------
      ----------
    GRID
    expect(grid.serialize).to eq(serialized_grid)
  end


  it 'can get a sum of its points' do
    grid = Grid.new(10, 10)
    grid.set_point_value(5, 5, '5')
    grid.set_point_value(3, 3, '8')
    grid.set_point_value(2, 2, '13')
    expect(grid.sum_points).to eq(26)
  end
end
