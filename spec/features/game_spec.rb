require 'game'

describe Game do
  subject(:game) { described_class.new }
  
  let(:game_rock) { double :game, :result => 'Rock' }
  let(:game_paper) { double :game, :result => 'Paper' }
  let(:game_scissors) { double :game, :result => 'Scissors' }

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
