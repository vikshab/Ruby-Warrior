class Player

  def attacked?
    @warrior.health < @health
  end

 def play_turn(warrior)
   @warrior = warrior
   @health  ||= 20


  if attacked? && @warrior.health <= 10
      @warrior.walk!(:backward)
  elsif @warrior.feel.empty? && attacked? && @warrior.health < 20
     @warrior.walk!
  elsif @warrior.feel.enemy? && attacked?
      @warrior.attack!
  elsif @warrior.feel.captive?
     @warrior.rescue!
  elsif !(@warrior.feel.empty?)
     @warrior.attack!
  elsif !attacked? && @warrior.feel.empty? && @warrior.health >= 20
      @warrior.walk!
  elsif  !attacked? && !(@warrior.feel.empty?) && @warrior.health >= 20
      @warrior.attack!
  elsif !attacked? && @warrior.health < 20
      @warrior.rest!
  end
   @health = @warrior.health
 end
end
