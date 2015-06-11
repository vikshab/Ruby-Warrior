class Player

  def attacked?
    @warrior.health < @health
  end

 def play_turn(warrior)
   @warrior = warrior
   # if health exists it will not create
   @health  ||= 20

  if @warrior.feel.empty? && attacked?
     @warrior.walk!
  elsif @warrior.feel.captive?
     @warrior.rescue!
  elsif !(@warrior.feel.empty?) #&& attacked?
     @warrior.attack!
  elsif !attacked? && @warrior.feel.empty? && @warrior.health >= 15
      @warrior.walk!
  elsif  !attacked? && !(@warrior.feel.empty?) && @warrior.health >= 15
      @warrior.attack!
  elsif !attacked? && @warrior.health < 15
      @warrior.rest!
  end
   @health = @warrior.health
 end
end
