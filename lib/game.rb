class Game
    RULES = {
      'Rock': {'Rock': :draw, 'Paper': :lose, 'Scissors': :win},
      'Paper': {'Rock': :win, 'Paper': :draw, 'Scissors': :lose},
      'Scissors': {'Rock': :lose, 'Paper': :win, 'Scissors': :draw}
    }



    attr_reader :opponent_weapon

  def initialize
    @opponent_weapon = opponent_weapon
  end

  def opponent_weapon
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def win?
    result == :win
  end

  def result
    return if @opponent_weapon.nil?
    RULES[@weapon][@opponent_weapon]
  end
end
