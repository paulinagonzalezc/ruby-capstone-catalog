require_relative '../src/game'

describe Game do
  before :each do
    @game = Game.new(true, '02/03/12', '02/02/12')
  end

  describe '#initialize' do
    it 'should return an instance of Game' do
      expect(@game).to be_instance_of Game
    end
  end

  describe '#can_be_archived' do
    it 'can be archived? if last played at > 2 years' do
      expect(@game.send(:can_be_archived?)).to be true
    end
  end

  describe '#publish_date' do
    it 'should return the publish date of the game' do
      expect(@game.publish_date).to eq '02/02/12'
    end
  end

  describe '#last_played_at' do
    it 'should return the last played date of the game' do
      expect(@game.last_played_at).to eq '02/03/12'
    end
  end

  describe '#multiplayer' do
    it 'should return the value of the multiplayer attribute' do
      expect(@game.multiplayer).to eq true
    end
  end
end
