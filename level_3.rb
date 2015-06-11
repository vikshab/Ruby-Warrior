#   def play_turn(warrior)
#     if warrior.feel.empty? && !poor_health?(warrior)
#        walk(warrior)
#     elsif poor_health?(warrior) && warrior.feel.empty?
#         gain_health(warrior)
#     else
#       attack(warrior)
#     end
#   end
# end


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
