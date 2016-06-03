module UsesPower
  def use_power
    "#{ @name } is now #{ @power }"
  end
end

class Superhero
  include UsesPower

  def initialize(name, power)
    @name = name
    @power = power
  end

  def use_power
    p "#{ super }!"
  end
end

class Villain
  include UsesPower

  def initialize(name, power)
    @name = name
    @power = power
  end

  def use_power
    p "#{ super }, villainously!"
  end
end



speed = Power.new("running real fast", 3)

flash = Superhero.new("The Flash", speed)
flash.use_power # => "The Flash is now running real fast!"

santa = Superhero.new("Santa Claus", speed)
santa.use_power # => "Santa Claus is now running real fast!"

batman = Superhero.new("Batman", "wealthy and sad :(")
batman.use_power # => "Batman is now wealthy and sad :(!"

lex = Villain.new("Lex Luthor", "wealthy and sad :(")
lex.use_power # => "Lex is now wealthy and sad :(, villainously!"

flash > lex # => true

Fight.new(flash, lex).run # => "The Flash is now running real fast! Lex is now wealthy and sad :(, villainously! The Flash is victorious!"

