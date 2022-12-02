class Day2
  @beats = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  @opponent_types = {
    A: :rock,
    B: :paper,
    C: :scissors
  }

  @you_types = {
    X: :rock,
    Y: :paper,
    Z: :scissors
  }

  @type_score = {
    rock: 1,
    paper: 2,
    scissors: 3
  }

  @round_result = {
    X: :lose,
    Y: :draw,
    Z: :win
  }

  def self.part_one(input_file)
    File.readlines(input_file).reduce(0) do |sum, game|
      sum + calculate_score(game)
    end
  end

  def self.part_two(input_file)
    File.readlines(input_file).reduce(0) do |sum, game|
      sum + calculate_score_two(game)
    end
  end

  def self.calculate_score(game_text)
    results = game_text.split
    opponent = @opponent_types[results[0].to_sym]
    you = @you_types[results[1].to_sym]
    results_score = calculate_result_score(opponent, you)
    results_score + @type_score[you]
  end

  def self.calculate_score_two(game_text)
    game = game_text.split
    opponent = @opponent_types[game[0].to_sym]
    desired_result = @round_result[game[1].to_sym]
    you = play_for_round_result(desired_result, opponent)
    results_score = calculate_result_score(opponent, you)
    results_score + @type_score[you]
  end

  def self.play_for_round_result(result, opponent)
    case result
    when :draw
      opponent
    when :win
      @beats[@beats[opponent]]
    else
      @beats[opponent]
    end
  end

  def self.calculate_result_score(opponent, you)
    case opponent
    when @beats[you]
      6
    when you
      3
    else
      0
    end
  end
end
