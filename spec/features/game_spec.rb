require 'game'

describe Game do
  subject(:game) { described_class.new }
  
  let(:game_rock) { double :game, :result => 'Rock' }

  it 'generates rock paper scissor at random and returns Rock' do
    expect(game_rock.result).to eq('Rock') 
  
  end
end
