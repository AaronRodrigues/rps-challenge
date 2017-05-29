require 'game'

describe Game do
  subject(:game) { described_class.new }
  
  let(:game_rock) { double :game, :opponent_weapon => 'Rock' }
  let(:game_scissors) { double :game, :opponent_weapon => 'Scissors' }

  it 'generates rock paper scissor at random and returns Rock' do
    expect(game_rock.opponent_weapon).to eq('Rock') 
  
  end

  context 'result' do

    describe '#win?' do
      it 'returns true if player chooses rock and opponent chooses scissors' do
        expect(game.win?).to eq true
      end
    end
  end
end
