class Player
  def play_turn(warrior)
    if warrior.feel.empty? && !(warrior.health < 10)
       warrior.walk!
    elsif warrior.health < 10 && warrior.feel.empty?
      warrior.rest!
    else
      warrior.attack!
    end
  end
end
