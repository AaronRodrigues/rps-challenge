class Game

    attr_reader  :player_1_name, :weapon, :opponent_weapon

  def initialize(choices)
    @player_1_name = choices["player_1_name"]
    @weapon = choices["weapon"]
    @opponent_weapon = choices["opponent_weapon"]
    
  end

  # def result
  #   ['Rock', 'Paper', 'Scissors'].sample
  # end


end
