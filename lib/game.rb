class Game

    attr_reader :result

  def initialize
    @result = result
  end

  def result
    ['Rock', 'Paper', 'Scissor'].sample
  end


end
