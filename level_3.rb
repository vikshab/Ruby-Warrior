class Player
  attr  :warrior, :health

  def walk(warrior)
    warrior.walk!
  end

  def gain_health(warrior)
    warrior.rest!
  end

  def attack(warrior)
    warrior.attack!
  end

  def poor_health?(warrior)
    if warrior.health < 20
      return true
    else
      return false
    end
  end

  def play_turn(warrior)
    if warrior.feel.empty? && !poor_health?(warrior)
       walk(warrior)
    elsif poor_health?(warrior) && warrior.feel.empty?
        gain_health(warrior)
    else
      attack(warrior)
    end
  end
end
