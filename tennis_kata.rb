class TennisKata
  def score

    if @first_player_get_score_times == 1 || @first_player_get_score_times == 2
      return "#{@score_map[@first_player_get_score_times]} love"
    end
    return 'love all'
  end

  def first_player_score
    @first_player_get_score_times += 1
  end

  def initialize
    @first_player_get_score_times = 0
    @score_map = {
      1 => 'fifteen',
      2 => 'thirty'
    }
  end
end
