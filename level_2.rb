class Player
  attr  :warrior

  def walk(warrior)
    warrior.walk!
  end

  def play_turn(warrior)
    if warrior.feel.empty?
      walk(warrior)
    else
      warrior.attack!
    end
  end
end
