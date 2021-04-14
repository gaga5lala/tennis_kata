require 'rspec'

def score_should_be(score)
  expect(@tennis.score).to eq(score)
end

def given_first_player_score(count)
  count.times do
    @tennis.first_player_score
  end
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
  end
  it 'thirty love' do
    given_first_player_score(2)
    score_should_be('thirty love')
  end
end

require_relative '../tennis_kata'

