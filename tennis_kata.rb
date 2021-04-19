class TennisKata
  def same_score?
    @first_player_get_score_times == @second_player_get_score_times
  end

  def deuce?
    same_score? && @first_player_get_score_times >= 3
  end

  def game_point?
    @first_player_get_score_times >= 3 && @second_player_get_score_times >= 3
  end

  def score
    if same_score?
      if game_point?
        "deuce"
      else
        "#{@score_map[@first_player_get_score_times]} all"
      end
    else
      if game_point?
        case (@first_player_get_score_times - @second_player_get_score_times).abs
        when 1
          adv_player = (@first_player_get_score_times > @second_player_get_score_times) ? @player_names[0] : @player_names[1]
          "#{adv_player} adv"
        when 2
          adv_player = (@first_player_get_score_times > @second_player_get_score_times) ? @player_names[0] : @player_names[1]
          "#{adv_player} win"
        else
          # type code here
        end
      else
        if @second_player_get_score_times == 0
          if @first_player_get_score_times == 1 || @first_player_get_score_times == 2 || @first_player_get_score_times == 3
            return "#{@score_map[@first_player_get_score_times]} love"
          end
        elsif @first_player_get_score_times == 0
          if @second_player_get_score_times == 1 || @second_player_get_score_times == 2 || @second_player_get_score_times == 3
            return "love #{@score_map[@second_player_get_score_times]}"
          end
        end
      end
    end
  end

  def first_player_score
    @first_player_get_score_times += 1
  end

  def second_player_score
    @second_player_get_score_times += 1
  end

  def initialize
    @player_names = ['gaga', 'joey']
    @first_player_get_score_times = 0
    @second_player_get_score_times = 0
    @score_map = {
      0 => 'love',
      1 => 'fifteen',
      2 => 'thirty',
      3 => 'forty'
    }
  end
end
