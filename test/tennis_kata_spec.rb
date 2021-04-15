require 'rspec'

def score_should_be(score)
  expect(@tennis.score).to eq(score)
end

def given_first_player_score(count)
  count.times do
    @tennis.first_player_score
  end
end

def given_second_player_score(count)
  count.times do
    @tennis.second_player_score
  end
end

def given_deuce
  given_first_player_score(3)
  given_second_player_score(3)
end

describe 'TennisKata' do
  before do
    @tennis = TennisKata.new
  end

  after do
    # Do nothing
  end

  context('when init game') do
    it 'love all' do
      score_should_be('love all')
    end
  end
  context 'when first player get score' do
    it 'fifteen love' do
      given_first_player_score(1)
      score_should_be('fifteen love')
    end
    it 'thirty love' do
      given_first_player_score(2)
      score_should_be('thirty love')
    end
    it 'forty love' do
      given_first_player_score(3)
      score_should_be('forty love')
    end
  end
  context 'when second player get score' do
    it 'love fifteen' do
      given_second_player_score(1)
      score_should_be('love fifteen')
    end
    it 'love thirty' do
      given_second_player_score(2)
      score_should_be('love thirty')
    end
    it 'love forty' do
      given_second_player_score(3)
      score_should_be('love forty')
    end
  end
  context 'when same score' do
    it 'should fifteen all' do
      given_first_player_score(1)
      given_second_player_score(1)
      score_should_be('fifteen all')
    end
    it 'should thirty all' do
      given_first_player_score(2)
      given_second_player_score(2)
      score_should_be('thirty all')
    end
    it 'should deuce' do
      given_deuce
      score_should_be('deuce')
    end
  end
  context 'when ready for game point' do
    context 'when first player adv' do
      it 'should gaga adv' do
        given_deuce
        given_first_player_score(1)
        score_should_be('gaga adv')
      end

    end

  end

end

require_relative '../tennis_kata'

