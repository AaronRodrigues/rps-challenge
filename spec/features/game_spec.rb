require 'game'

describe Game do
  subject(:game) { described_class.new(session) }
  
  let(:session) {{"player_1_name" => "Dave", "weapon" => 'Rock', "opponent_weapon" => 'Rock'}}
  let(:game_rock) { double :game, :result => 'Rock' }
  let(:game_paper) { double :game, :result => 'Paper' }
  let(:game_scissors) { double :game, :result => 'Scissors' }

  describe '#player_name' do
    it 'returns player name' do
      expect(game.player_1_name).to eq 'Dave'
    end
  end

  describe '#weapon' do
    it 'returns player weapon' do
      expect(game.weapon).to eq 'Rock'
    end
  end

  describe '#opponent_weapon' do
    it 'returns oppponent weapon' do
      expect(game.opponent_weapon).to eq 'Rock'
    end
  end

  it 'generates rock paper scissor at random and returns Rock' do
    expect(game_rock.result).to eq('Rock') 
  
  end

  it 'generates rock paper scissor at random and returns Rock' do
    expect(game_paper.result).to eq('Paper') 
  
  end

  it 'generates rock paper scissor at random and returns Rock' do
    expect(game_scissors.result).to eq('Scissors') 
  
  end
end
